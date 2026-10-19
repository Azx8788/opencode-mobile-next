package io.github.eslamasabry.opencode_mobile

import android.os.SystemClock
import android.view.View
import android.widget.RemoteViews
import org.json.JSONObject

private const val STRIP_SIDE_DP = 142f
private const val STRIP_MIN_TEXT_DP = 80f
private const val STRIP_TITLE_SP = 15f
private const val TINY_TWO_LINE_HEIGHT_DP = 56

/** The 2x1 and 4x1 layouts: one conversation on one or two lines. */
internal class WidgetStripBinder(private val env: WidgetRowEnv, private val text: WidgetRowText) {
    private val g = env.g

    fun bindTiny(views: RemoteViews, session: JSONObject?, frame: SessionWidgetFrame) {
        val m = session?.let { WidgetRowModel(env, it) }
        views.setOnClickPendingIntent(android.R.id.background, env.open(session))
        if (m == null) {
            emptyTitle(views)
            return
        }
        env.dot(views, text.dotColor(m, false))
        val needs = m.lead == WidgetLayoutPolicy.Lead.NEEDS_YOU
        views.setTextViewText(R.id.wc_title, if (needs) env.copy.shortAsk(m.ask, m.question) else m.title)
        views.setTextColor(R.id.wc_title, if (needs) g.amber else g.text)
        views.setInt(R.id.wc_title, "setMaxLines", if (frame.effectiveHeightDp >= TINY_TWO_LINE_HEIGHT_DP) 2 else 1)
    }

    private fun emptyTitle(views: RemoteViews) {
        env.dot(views, g.idle)
        views.setTextViewText(R.id.wc_title, env.str(R.string.widget_v2_empty))
        views.setTextColor(R.id.wc_title, g.muted)
    }

    fun bindStrip(views: RemoteViews, session: JSONObject?, frame: SessionWidgetFrame) {
        val m = session?.let { WidgetRowModel(env, it) }
        views.setOnClickPendingIntent(android.R.id.background, env.open(session))
        views.setViewVisibility(R.id.wc_live, View.GONE)
        if (m == null) {
            emptyTitle(views)
            views.setViewVisibility(R.id.wc_sub, View.GONE)
            views.setViewVisibility(R.id.wc_mic, View.GONE)
            return
        }
        env.dot(views, text.dotColor(m, false))
        val needs = m.lead == WidgetLayoutPolicy.Lead.NEEDS_YOU
        // One whole line: the short question when it fits, else the plain question and the
        // command or file moves to the line below.
        val short = env.copy.shortAsk(m.ask, m.question)
        val stripText = (frame.widthDp - STRIP_SIDE_DP).coerceAtLeast(STRIP_MIN_TEXT_DP)
        val shortFits = WidgetLayoutPolicy.estimateLines(short, stripText, STRIP_TITLE_SP, true, 2) <= 1
        views.setTextViewText(
            R.id.wc_title,
            when {
                !needs -> m.title
                shortFits -> short
                else -> m.question
            }
        )
        views.setTextColor(R.id.wc_title, g.text)
        val counting = m.lead == WidgetLayoutPolicy.Lead.WORKING && m.step.isBlank() && m.ticking
        if (counting) stripCounter(views, m)
        views.setTextViewText(R.id.wc_sub, stripSub(m, shortFits))
        views.setTextColor(R.id.wc_sub, g.muted)
        views.setViewVisibility(R.id.wc_sub, if (counting) View.GONE else View.VISIBLE)
        stripAction(views, m, needs)
    }

    /** The line under the strip's title, by what the conversation is doing. */
    private fun stripSub(m: WidgetRowModel, shortFits: Boolean): String {
        val status = text.statusText(m, true)
        return when (m.lead) {
            // The title of a command ask already is the command: do not say it twice.
            WidgetLayoutPolicy.Lead.NEEDS_YOU -> env.copy.join(
                if (shortFits) "" else m.ask?.optString("file").orEmpty(),
                if (m.dir.isNotBlank()) env.copy.inDir(m.dir) else "",
                m.project
            ).ifBlank { status }
            WidgetLayoutPolicy.Lead.OFFLINE -> status
            WidgetLayoutPolicy.Lead.WORKING -> text.workingLine(m)
            WidgetLayoutPolicy.Lead.READY -> env.copy.join(status, env.copy.ago(m.updatedAt))
        }
    }

    /** "Working · 3:12", counting up on its own. */
    private fun stripCounter(views: RemoteViews, m: WidgetRowModel) {
        views.setViewVisibility(R.id.wc_live, View.VISIBLE)
        views.setTextColor(R.id.wc_live, g.muted)
        views.setChronometer(
            R.id.wc_live,
            WidgetStatusRules.chronometerBase(m.startedAt, System.currentTimeMillis(), SystemClock.elapsedRealtime()),
            env.str(R.string.widget_v2_working, "%s"),
            true
        )
    }

    private fun stripAction(views: RemoteViews, m: WidgetRowModel, needs: Boolean) {
        views.setViewVisibility(R.id.wc_btn1, View.GONE)
        views.setViewVisibility(R.id.wc_mic, View.GONE)
        if (needs && m.can("allowOnce")) {
            env.paintButton(
                views, R.id.wc_btn1, env.str(R.string.widget_v2_allow_short), true, env.action(m, "allowOnce")
            )
        } else if (!env.settings) {
            views.setViewVisibility(R.id.wc_mic, View.VISIBLE)
            env.paintMic(views, env.micIntent(m))
        }
    }
}
