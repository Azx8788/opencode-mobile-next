package io.github.eslamasabry.opencode_mobile

import android.content.Context
import android.graphics.Color
import android.os.Build
import android.view.View
import android.widget.RemoteViews
import org.json.JSONObject

/** Renders one responsive widget size from the same cached snapshot:
 * 2x1, 4x1, 2x2, 4x2 and the 4x4 list (see [WidgetV2Policy.Size]). */
internal class SessionWidgetRenderer(
    private val context: Context,
    private val id: Int,
    private val snapshot: JSONObject
) {
    fun render(width: Int, height: Int): RemoteViews {
        val size = WidgetSizePolicy.size(width, height)
        val state = SessionWidgetSnapshot(snapshot)
        val pages = state.carousel()
        val views = RemoteViews(context.packageName, when (size) {
            WidgetV2Policy.Size.TINY -> R.layout.widget_sessions_compact
            WidgetV2Policy.Size.STRIP -> R.layout.widget_sessions_strip
            WidgetV2Policy.Size.CARD, WidgetV2Policy.Size.WIDE ->
                if (pages.size > 1) R.layout.widget_sessions_card else R.layout.widget_sessions_card_single
            WidgetV2Policy.Size.LIST -> R.layout.widget_sessions
        })
        val graphite = WidgetGraphite.of(context, snapshot)
        paintBackground(views, graphite)
        val fontScale = context.resources.configuration.fontScale.coerceAtLeast(1f)
        val frame = SessionWidgetFrame(width.toFloat(), (height / fontScale).toInt())
        val rows = SessionWidgetRow(context, id, snapshot, state, graphite)
        when (size) {
            WidgetV2Policy.Size.TINY -> rows.bindTiny(views, state.sessions.firstOrNull(), frame)
            WidgetV2Policy.Size.STRIP -> rows.bindStrip(views, state.sessions.firstOrNull(), frame)
            WidgetV2Policy.Size.CARD, WidgetV2Policy.Size.WIDE -> {
                if (pages.size > 1) {
                    pages.forEach { views.addView(R.id.wc_flipper, rows.page(it, size, frame)) }
                    views.setOnClickPendingIntent(android.R.id.background,
                        SessionWidgetIntents.chatIntent(context, id, snapshot, pages.first()))
                } else rows.bindPage(views, pages.firstOrNull(), size, frame)
            }
            WidgetV2Policy.Size.LIST -> rows.bindList(views, frame)
        }
        return views
    }

    private fun paintBackground(views: RemoteViews, g: WidgetGraphite) {
        val mode = WidgetV2Style.backgroundMode(context, id, snapshot)
        val color = when (mode) {
            "transparent" -> Color.TRANSPARENT
            "tinted" -> blend(g.card, g.green, TINT_BLEND)
            else -> g.card
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            WidgetGraphite.tint(views, android.R.id.background, color)
        } else if (mode != "solid") {
            views.setInt(android.R.id.background, "setBackgroundColor", color)
        }
    }

    private fun blend(a: Int, b: Int, f: Float): Int = Color.rgb(
        (Color.red(a) + (Color.red(b) - Color.red(a)) * f).toInt(),
        (Color.green(a) + (Color.green(b) - Color.green(a)) * f).toInt(),
        (Color.blue(a) + (Color.blue(b) - Color.blue(a)) * f).toInt())

    private companion object {
        const val TINT_BLEND = 0.08f
    }
}

/** The usable size at font scale 1: the width in dp and the height already divided by the font scale. */
internal class SessionWidgetFrame(val widthDp: Float, val effectiveHeightDp: Int)

internal class SessionWidgetSnapshot(private val snapshot: JSONObject) {
    val sessions: List<JSONObject> = visibleSessions()
    /** Working turns that are not already counted as needing you. */
    val running = WidgetStatusRules.workingCount(
        snapshot.optInt("runningCount", sessions.count { it.optBoolean("busy") }),
        sessions.count { it.optBoolean("busy") && it.optString("requestID").isNotBlank() })
    val needs = snapshot.optInt("pendingCount").coerceAtLeast(0)
    val connection: WidgetV2Policy.Connection = connection()

    private fun visibleSessions(): List<JSONObject> {
        val array = snapshot.optJSONArray("sessions")
        val rows = (0 until (array?.length() ?: 0)).mapNotNull { array?.optJSONObject(it) }
            .filter { it.optString("id").isNotBlank() }.take(MAX_SESSIONS)
        val chats = rows.any { it.optJSONObject("team") == null }
        return rows.filter {
            WidgetStatusRules.showRow(it.optJSONObject("team") != null,
                it.optJSONObject("team")?.optString("action").orEmpty(), it.optString("requestID"), chats)
        }.sortedBy { WidgetStatusRules.rank(it.optString("requestID").isNotBlank(), it.optBoolean("busy")) }
    }

    private fun connection(): WidgetV2Policy.Connection {
        val receipt = snapshot.optJSONObject("actionResult")
        val onDemandAvailable = WidgetV2Policy.onDemandAvailable(
            snapshot.optInt("version"),
            snapshot.optJSONObject("onDemand")?.optString("fingerprint")?.isNotBlank() == true)
        return WidgetV2Policy.connection(WidgetV2Policy.ConnectionState(snapshot.optInt("version"),
            snapshot.optBoolean("connected"), BackgroundConnectionService.active,
            onDemandAvailable, BackgroundConnectionService.widgetActionPending,
            WidgetV2Policy.needsBackgroundSettings(receipt?.optString("status"), receipt?.optString("error"))))
    }

    /** The cards a 2x2 or 4x2 flips through: the working turns when connected and nothing
     * waits for the person; otherwise the one that matters most. */
    fun carousel(): List<JSONObject> =
        if (connection == WidgetV2Policy.Connection.CONNECTED &&
            sessions.firstOrNull()?.optString("requestID").isNullOrBlank()) {
            sessions.filter { it.optBoolean("busy") }.take(MAX_CAROUSEL_SESSIONS).ifEmpty { sessions.take(1) }
        } else sessions.take(1)

    private companion object {
        const val MAX_SESSIONS = 12
        const val MAX_CAROUSEL_SESSIONS = 4
    }
}
