package io.github.eslamasabry.opencode_mobile

import android.os.SystemClock
import android.view.View
import android.widget.RemoteViews

private const val LIST_TEXT_INSET_DP = 46f
private const val LIST_BODY_SP = 13f
private const val LIST_BODY_MAX_LINES = 5

/** The 4x4 and taller list: a summary line, one row per conversation and the new-conversation pill. */
internal class WidgetListBinder(private val env: WidgetRowEnv, private val text: WidgetRowText) {
    private val g = env.g
    private val state = env.state
    private val parts = WidgetListRowParts(env)

    fun bindList(views: RemoteViews, frame: SessionWidgetFrame) {
        views.setOnClickPendingIntent(R.id.wc_head_title, env.open(null))
        bindHead(views)
        views.setTextColor(R.id.wc_head_title, g.lead)
        bindRows(views, frame)
        bindNew(views)
        if (state.sessions.isEmpty()) views.setOnClickPendingIntent(android.R.id.background, env.open(null))
    }

    private fun bindHead(views: RemoteViews) {
        val override = if (env.connection == WidgetV2Policy.Connection.PENDING) {
            env.str(R.string.widget_v2_pending)
        } else {
            text.notice()
        }
        views.setViewVisibility(R.id.wc_head_need, View.GONE)
        views.setViewVisibility(R.id.wc_head_work, View.GONE)
        when {
            override != null -> headLine(views, R.id.wc_head_need, override, g.lead)
            env.offline -> headLine(views, R.id.wc_head_need, env.copy.offline(env.lastSeen), g.lead)
            else -> headCounts(views)
        }
    }

    private fun headCounts(views: RemoteViews) {
        val needs = state.needs
        val working = state.running
        if (needs > 0) {
            val label = if (needs == 1) R.string.widget_v2_summary_needs_one else R.string.widget_v2_summary_needs_many
            headLine(views, R.id.wc_head_need, env.str(label, needs), g.amber)
        }
        if (working > 0) {
            val prefix = if (needs > 0) " · " else ""
            headLine(views, R.id.wc_head_work, prefix + env.str(R.string.widget_v2_count_working, working), g.lead)
        }
    }

    private fun headLine(views: RemoteViews, viewId: Int, line: String, color: Int) {
        views.setViewVisibility(viewId, View.VISIBLE)
        views.setTextViewText(viewId, line)
        views.setTextColor(viewId, color)
    }

    private fun bindRows(views: RemoteViews, frame: SessionWidgetFrame) {
        views.removeAllViews(R.id.wc_rows)
        if (state.sessions.isEmpty()) {
            views.addView(R.id.wc_rows, emptyRow()) // fixed height, top-aligned
            return
        }
        // The top row may carry whole lines of its own text; every other row stretches to share
        // what is left, so the card has no empty band whatever the number of conversations.
        val rows = WidgetLayoutPolicy.listRows(frame.effectiveHeightDp, state.sessions.size)
        val shown = state.sessions.take(rows)
        val spare = WidgetLayoutPolicy.listBodyLines(frame.effectiveHeightDp, shown.size)
        val textWidth = frame.widthDp - LIST_TEXT_INSET_DP
        val rejectFits = WidgetLayoutPolicy.listShowsReject(frame.widthDp)
        shown.forEachIndexed { index, session ->
            val bodyLines = if (index == 0) spare else 0
            val row = listRow(WidgetRowModel(env, session), index == 0, bodyLines, textWidth, rejectFits)
            views.addView(R.id.wc_rows, row)
        }
    }

    private fun bindNew(views: RemoteViews) {
        val project = state.sessions.map { it.optString("project") }.firstOrNull { it.isNotBlank() }.orEmpty()
        views.setTextViewText(
            R.id.wc_new_text,
            when {
                env.settings -> env.str(R.string.widget_v2_background_settings)
                project.isBlank() -> env.str(R.string.widget_v2_new)
                else -> env.str(R.string.widget_v2_new_in, project)
            }
        )
        views.setTextColor(R.id.wc_new_text, g.muted)
        WidgetGraphite.tint(views, R.id.wc_new, g.pill)
        val intent = env.newConversationIntent()
        views.setOnClickPendingIntent(R.id.wc_new, intent)
        if (env.settings) views.setViewVisibility(R.id.wc_mic, View.GONE) else env.paintMic(views, intent)
    }

    private fun emptyRow(): RemoteViews {
        // The filling row centres its text in the list, so an empty list is not top-heavy.
        val v = RemoteViews(env.context.packageName, R.layout.widget_session_v2_list_row)
        v.setViewVisibility(R.id.wc_divider, View.GONE)
        env.dot(v, g.idle)
        v.setTextViewText(R.id.wc_title, env.str(R.string.widget_v2_empty))
        v.setTextColor(R.id.wc_title, g.muted)
        v.setViewVisibility(R.id.wc_sub, View.GONE)
        v.setOnClickPendingIntent(R.id.wc_row, env.open(null))
        return v
    }

    /** A row that carries [bodyLines] > 0 uses the fixed layout and says more of its own text. */
    private fun listRow(
        m: WidgetRowModel,
        first: Boolean,
        bodyLines: Int,
        textWidth: Float,
        rejectFits: Boolean
    ): RemoteViews {
        val layout = if (bodyLines > 0) {
            R.layout.widget_session_v2_list_row_fixed
        } else {
            R.layout.widget_session_v2_list_row
        }
        val v = RemoteViews(env.context.packageName, layout)
        v.setOnClickPendingIntent(R.id.wc_row, env.open(m.session))
        if (first) {
            v.setViewVisibility(R.id.wc_divider, View.GONE)
        } else {
            v.setInt(R.id.wc_divider, "setBackgroundColor", g.divider)
        }
        env.dot(v, text.dotColor(m, true))
        val needs = m.lead == WidgetLayoutPolicy.Lead.NEEDS_YOU
        // A row that needs you leads with the question itself, the conversation's name below it.
        v.setTextViewText(R.id.wc_title, if (needs) env.copy.shortAsk(m.ask, m.question) else m.title)
        v.setTextColor(R.id.wc_title, g.text)
        val sub = when (m.lead) {
            WidgetLayoutPolicy.Lead.NEEDS_YOU -> m.title
            WidgetLayoutPolicy.Lead.WORKING -> m.step.ifBlank { text.workingLine(m) }
            else -> env.copy.join(m.project, env.copy.ago(m.updatedAt))
        }
        live(v, m, sub)
        parts.rowBody(v, m, bodyLines, textWidth)
        parts.rowButtons(v, m, needs, rejectFits)
        return v
    }

    private fun live(v: RemoteViews, m: WidgetRowModel, subText: String) {
        v.setTextColor(R.id.wc_live, g.muted)
        v.setTextColor(R.id.wc_sub, g.muted)
        if (m.ticking) {
            v.setViewVisibility(R.id.wc_live, View.VISIBLE)
            v.setViewVisibility(R.id.wc_sub, View.GONE)
            val format = if (m.step.isBlank()) "%s" else m.step.replace("%", "%%") + " · %s"
            val base = WidgetStatusRules.chronometerBase(
                m.startedAt, System.currentTimeMillis(), SystemClock.elapsedRealtime()
            )
            v.setChronometer(R.id.wc_live, base, format, true)
        } else {
            v.setViewVisibility(R.id.wc_live, View.GONE)
            v.setViewVisibility(R.id.wc_sub, if (subText.isBlank()) View.GONE else View.VISIBLE)
            v.setTextViewText(R.id.wc_sub, subText)
        }
    }
}

/** The body text and buttons of one list row. */
internal class WidgetListRowParts(private val env: WidgetRowEnv) {
    private val g = env.g

    /** The rows do not fill the card: the top row says more in whole lines of its own text. */
    fun rowBody(v: RemoteViews, m: WidgetRowModel, bodyLines: Int, textWidth: Float) {
        if (bodyLines <= 0) return
        val body = if (m.lead == WidgetLayoutPolicy.Lead.WORKING) m.step.ifBlank { m.last } else m.last
        val needed = WidgetLayoutPolicy.estimateLines(body, textWidth, LIST_BODY_SP, false, LIST_BODY_MAX_LINES)
        val fit = if (body.isNotBlank()) minOf(bodyLines, needed) else 0
        v.setViewVisibility(R.id.wc_body, if (fit > 0) View.VISIBLE else View.GONE)
        if (fit > 0) {
            v.setTextViewText(R.id.wc_body, body)
            v.setTextColor(R.id.wc_body, g.subtle)
            v.setInt(R.id.wc_body, "setMaxLines", fit)
        }
    }

    fun rowButtons(v: RemoteViews, m: WidgetRowModel, needs: Boolean, rejectFits: Boolean) {
        v.setViewVisibility(R.id.wc_btn1, View.GONE)
        v.setViewVisibility(R.id.wc_btn2, View.GONE)
        if (needs && m.can("allowOnce")) {
            // Reject sits before Allow (the safe choice is not the one under the thumb), only when
            // the row is wide enough to keep the question readable.
            if (rejectFits && m.can("reject")) {
                env.paintButton(v, R.id.wc_btn2, env.str(R.string.widget_v2_reject), false, env.action(m, "reject"))
            }
            env.paintButton(
                v, R.id.wc_btn1, env.str(R.string.widget_v2_allow_short), true, env.action(m, "allowOnce")
            )
        } else if (m.teamAction.isNotBlank() && m.can(m.teamAction)) {
            val label = if (m.teamAction == "approvePlan") R.string.widget_v2_approve else R.string.widget_v2_resume
            env.paintButton(v, R.id.wc_btn1, env.str(label), true, env.action(m, m.teamAction))
        }
    }
}
