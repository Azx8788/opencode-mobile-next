package io.github.eslamasabry.opencode_mobile

import android.app.PendingIntent
import android.content.Context
import android.view.View
import android.widget.RemoteViews
import org.json.JSONObject

/** What every card, strip, tiny and list binder shares: the snapshot, its connection and the common paints. */
internal class WidgetRowEnv(
    val context: Context,
    val id: Int,
    val snapshot: JSONObject,
    val state: SessionWidgetSnapshot,
    val g: WidgetGraphite
) {
    val copy = WidgetCopy(context)
    val connection = state.connection
    val offline = connection == WidgetV2Policy.Connection.OFFLINE ||
        connection == WidgetV2Policy.Connection.BACKGROUND_SETTINGS
    val settings = connection == WidgetV2Policy.Connection.BACKGROUND_SETTINGS
    val overlays = WidgetV2Bridge.overlayReady(context)
    val lastSeen: Long = listOf(
        snapshot.optLong("lastSeenAt"),
        snapshot.optLong("pausedAt"),
        state.sessions.firstOrNull()?.optLong("updatedAt") ?: 0L
    ).firstOrNull { it > 0 } ?: 0L

    fun str(resId: Int): String = NativeStrings.get(context, resId)

    fun str(resId: Int, arg: Any): String = NativeStrings.get(context, resId, arg)

    fun open(session: JSONObject?) = SessionWidgetIntents.chatIntent(context, id, snapshot, session)

    /** The mic: dictate into the working turn when that can be done live, else open the conversation. */
    fun micIntent(m: WidgetRowModel?): PendingIntent {
        val live = connection == WidgetV2Policy.Connection.CONNECTED && overlays
        if (m != null && live && m.steerable) {
            return WidgetV2Bridge.routeIntent(context, id, snapshot, m.session, "steer")
        }
        return open(m?.session)
    }

    fun newConversationIntent(): PendingIntent {
        val voiceReady = overlays &&
            connection == WidgetV2Policy.Connection.CONNECTED &&
            snapshot.optString("lastProjectID").isNotBlank()
        return when {
            settings -> SessionWidgetIntents.backgroundSettingsIntent(context, id)
            voiceReady -> WidgetV2Bridge.routeIntent(context, id, snapshot, null, "voice")
            else -> open(null)
        }
    }

    fun paintMic(v: RemoteViews, intent: PendingIntent) {
        v.setViewVisibility(R.id.wc_mic, View.VISIBLE)
        WidgetGraphite.tint(v, R.id.wc_mic, g.green)
        v.setInt(R.id.wc_mic_icon, "setColorFilter", g.onGreen)
        v.setContentDescription(R.id.wc_mic, str(R.string.widget_v2_voice))
        v.setOnClickPendingIntent(R.id.wc_mic, intent)
    }

    fun paintButton(v: RemoteViews, viewId: Int, label: String, primary: Boolean, intent: PendingIntent) {
        v.setViewVisibility(viewId, View.VISIBLE)
        v.setTextViewText(viewId, label)
        v.setTextColor(viewId, if (primary) g.onPrimary else g.text)
        WidgetGraphite.tint(v, viewId, if (primary) g.primary else g.pill)
        v.setOnClickPendingIntent(viewId, intent)
    }

    fun action(m: WidgetRowModel, name: String): PendingIntent =
        WidgetV2Bridge.actionIntent(context, id, snapshot, m.session, name)

    fun dot(v: RemoteViews, color: Int) = v.setInt(R.id.wc_dot, "setColorFilter", color)
}

/** What one conversation is, read once. */
internal class WidgetRowModel(private val env: WidgetRowEnv, val session: JSONObject) {
    val title = session.optString("title")
    val project = session.optString("project")
    val request = session.optString("requestID").isNotBlank()
    val busy = session.optBoolean("busy")
    val ask: JSONObject? = session.optJSONObject("ask")

    // Only what it is doing right now: the preview of a busy turn is the previous reply, not a live step.
    val step = if (busy) session.optString("step") else ""
    val reply = if (busy) "" else session.optString("preview")

    /** The conversation's last line of its own words; a live step is not one. */
    val last = session.optString("preview").takeIf { it != session.optString("step") }.orEmpty()
    val updatedAt = session.optLong("updatedAt")
    val startedAt = session.optLong("startedAt")
    val teamAction = session.optJSONObject("team")?.optString("action").orEmpty()
    val lead = WidgetStatusRules.lead(request, busy, env.offline)
    val valid = SessionWidgetActions.validActions(env.snapshot, session)
    val advertised =
        if (env.snapshot.optJSONObject("onDemand")?.optString("fingerprint")?.isNotBlank() == true) {
            SessionWidgetActions.advertisedActions(session)
        } else {
            emptySet()
        }
    val dir = ask?.optString("dir").orEmpty()
    val question = ask?.optString("q").orEmpty().ifBlank { title }
    val ticking = !request && WidgetStatusRules.timerTicks(
        busy,
        startedAt,
        env.connection == WidgetV2Policy.Connection.CONNECTED
    )

    /** A working turn that accepts steering while the widget is live. */
    val steerable: Boolean
        get() = busy && !request && session.optString("steerMode") in STEER_MODES

    fun can(name: String) = WidgetV2Policy.actionEnabled(env.connection, name, advertised, name in valid)

    private companion object {
        val STEER_MODES = setOf("steer", "afterReply")
    }
}

/** The words and dot colours a conversation shows. */
internal class WidgetRowText(private val env: WidgetRowEnv) {
    fun notice(): String? =
        when (WidgetV2Policy.actionResultNotice(env.snapshot.optJSONObject("actionResult")?.optString("status"))) {
            "rejected" -> env.str(R.string.widget_v2_failed)
            "uncertain" -> env.str(R.string.widget_v2_uncertain)
            else -> null
        }

    /** One status phrase per conversation: the sending state or a failed action outranks the ordinary words. */
    fun statusText(m: WidgetRowModel, top: Boolean): String {
        val notice = if (top) notice() else null
        return when {
            env.connection == WidgetV2Policy.Connection.PENDING && m.request -> env.str(R.string.widget_v2_pending)
            notice != null -> notice
            else -> leadText(m)
        }
    }

    private fun leadText(m: WidgetRowModel): String = when (m.lead) {
        WidgetLayoutPolicy.Lead.NEEDS_YOU -> env.copy.needsYou()
        WidgetLayoutPolicy.Lead.OFFLINE -> env.copy.offline(env.lastSeen)
        WidgetLayoutPolicy.Lead.WORKING -> env.copy.working()
        WidgetLayoutPolicy.Lead.READY -> env.copy.ready()
    }

    fun dotColor(m: WidgetRowModel, list: Boolean): Int = when (m.lead) {
        WidgetLayoutPolicy.Lead.NEEDS_YOU -> env.g.amber
        WidgetLayoutPolicy.Lead.OFFLINE -> env.g.idle
        WidgetLayoutPolicy.Lead.WORKING -> env.g.green
        WidgetLayoutPolicy.Lead.READY -> if (list) env.g.idle else env.g.green
    }

    /** "3 min" since the turn began, for the line under a working card's title. */
    fun spanText(m: WidgetRowModel): String {
        val since = WidgetElapsedPolicy.sinceUnit(System.currentTimeMillis(), m.startedAt) ?: return ""
        return env.str(
            if (since.first == "min") R.string.widget_v2_span_min else R.string.widget_v2_span_hour,
            since.second
        )
    }

    /** "Working · Editing x.dart" when a live step is known, else "Working · 3 min", else "Working". */
    fun workingLine(m: WidgetRowModel): String {
        val since = WidgetElapsedPolicy.sinceUnit(System.currentTimeMillis(), m.startedAt)
        return when {
            m.step.isNotBlank() -> env.str(R.string.widget_v2_working_step, m.step)
            since == null -> env.copy.working()
            since.first == "min" -> env.str(R.string.widget_v2_working_min, since.second)
            else -> env.str(R.string.widget_v2_working_hour, since.second)
        }
    }
}
