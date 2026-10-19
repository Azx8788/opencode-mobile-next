package io.github.eslamasabry.opencode_mobile

import android.view.Gravity
import android.view.View
import android.widget.RemoteViews
import org.json.JSONObject

private const val PAGE_PADDING_DP = 28f
private const val EMPTY_TITLE_SP = 14f
private const val EMPTY_TITLE_MAX_LINES = 3

/** The 2x2 and 4x2 card: header, body (story or ask) and the bottom actions. */
internal class WidgetPageBinder(private val env: WidgetRowEnv, private val text: WidgetRowText) {
    private val g = env.g
    private val body = WidgetCardBodyBinder(env)

    /** Binds one card onto [v]: a flipper page, or the widget itself when there is only one card. */
    fun bindPage(v: RemoteViews, session: JSONObject?, size: WidgetV2Policy.Size, frame: SessionWidgetFrame) {
        val m = session?.let { WidgetRowModel(env, it) }
        resetPage(v)
        v.setOnClickPendingIntent(R.id.wc_page, env.open(session))
        if (m == null) {
            emptyPage(v)
            return
        }
        val wide = size == WidgetV2Policy.Size.WIDE
        val inner = frame.widthDp - PAGE_PADDING_DP
        bindHeader(v, m, wide, inner)
        val needs = m.lead == WidgetLayoutPolicy.Lead.NEEDS_YOU
        if (needs) body.bindAsk(v, m, wide, inner, frame) else body.bindStory(v, m, wide, inner, frame)
        bindBottom(v, m, wide, needs)
    }

    private fun bindHeader(v: RemoteViews, m: WidgetRowModel, wide: Boolean, inner: Float) {
        env.dot(v, text.dotColor(m, false))
        val status = text.statusText(m, true)
        v.setTextViewText(R.id.wc_status, status)
        v.setTextColor(R.id.wc_status, if (m.lead == WidgetLayoutPolicy.Lead.NEEDS_YOU) g.amber else g.lead)
        // Ready: "my-app · 26 min ago" on 4x2; Working: "my-app · 1 min" on both card sizes.
        val whenText = when {
            m.lead == WidgetLayoutPolicy.Lead.READY && wide -> env.copy.ago(m.updatedAt)
            m.lead == WidgetLayoutPolicy.Lead.WORKING -> text.spanText(m)
            else -> ""
        }
        val tail = if (m.lead == WidgetLayoutPolicy.Lead.OFFLINE) {
            ""
        } else {
            WidgetLayoutPolicy.headerTailFit(status, m.project, whenText, inner)
        }
        v.setTextViewText(R.id.wc_project, if (tail.isBlank()) "" else " · $tail")
        v.setTextColor(R.id.wc_project, g.lead)
        v.setViewVisibility(R.id.wc_project, if (tail.isBlank()) View.GONE else View.VISIBLE)
    }

    /** A launcher re-applies new content onto the views it already has, so a view hidden by the
     * last update stays hidden unless every update says what it shows. Start from the defaults. */
    private fun resetPage(v: RemoteViews) {
        for (id in listOf(R.id.wc_title, R.id.wc_sub, R.id.wc_status, R.id.wc_project, R.id.wc_ask, R.id.wc_mic)) {
            v.setViewVisibility(id, View.VISIBLE)
        }
        v.setViewVisibility(R.id.wc_gap_bottom, View.VISIBLE)
        v.setInt(R.id.wc_title, "setGravity", Gravity.START)
        // A card that was once empty centred this pill's text; every other card reads from the start.
        v.setInt(R.id.wc_ask_text, "setGravity", Gravity.START or Gravity.CENTER_VERTICAL)
        val hidden = listOf(
            R.id.wc_q, R.id.wc_file, R.id.wc_live, R.id.wc_preview, R.id.wc_buttons, R.id.wc_gap_top,
            R.id.wc_d2, R.id.wc_d3, R.id.wc_btn1, R.id.wc_btn2, R.id.wc_btn3
        )
        for (id in hidden) v.setViewVisibility(id, View.GONE)
    }

    /** Nothing to show yet: the message sits in the middle of the card (not stuck to the top),
     * and one pill below it is the way in. Tapping anywhere on the card does the same. */
    private fun emptyPage(v: RemoteViews) {
        v.setViewVisibility(R.id.wc_dot, View.GONE)
        v.setViewVisibility(R.id.wc_status, View.GONE)
        v.setViewVisibility(R.id.wc_project, View.GONE)
        v.setViewVisibility(R.id.wc_gap_top, View.VISIBLE)
        v.setTextViewText(R.id.wc_title, env.str(R.string.widget_v2_empty))
        v.setTextColor(R.id.wc_title, g.muted)
        v.setTextViewTextSize(R.id.wc_title, android.util.TypedValue.COMPLEX_UNIT_SP, EMPTY_TITLE_SP)
        v.setInt(R.id.wc_title, "setMaxLines", EMPTY_TITLE_MAX_LINES)
        v.setInt(R.id.wc_title, "setGravity", Gravity.CENTER_HORIZONTAL)
        v.setViewVisibility(R.id.wc_sub, View.GONE)
        v.setViewVisibility(R.id.wc_mic, View.GONE)
        v.setInt(R.id.wc_ask_text, "setGravity", Gravity.CENTER)
        v.setTextViewText(R.id.wc_ask_text, env.str(R.string.widget_v2_connect_pill))
        v.setTextColor(R.id.wc_ask_text, g.text)
        v.setViewVisibility(R.id.wc_ask, View.VISIBLE)
        WidgetGraphite.tint(v, R.id.wc_ask, g.pill)
        v.setOnClickPendingIntent(R.id.wc_ask, env.open(null))
    }

    private fun bindBottom(v: RemoteViews, m: WidgetRowModel, wide: Boolean, needs: Boolean) {
        val team = m.teamAction.isNotBlank() && m.can(m.teamAction)
        if (needs || team) bottomActions(v, m, wide, needs, team) else bottomAsk(v, m)
    }

    private fun bottomActions(v: RemoteViews, m: WidgetRowModel, wide: Boolean, needs: Boolean, team: Boolean) {
        val openIntent = env.open(m.session)
        val openLabel = env.str(R.string.widget_v2_open)
        v.setViewVisibility(R.id.wc_ask, View.GONE)
        v.setViewVisibility(R.id.wc_buttons, View.VISIBLE)
        v.setViewVisibility(R.id.wc_btn1, View.GONE)
        v.setViewVisibility(R.id.wc_btn2, View.GONE)
        v.setViewVisibility(R.id.wc_btn3, View.GONE)
        val allow = needs && m.can("allowOnce")
        val reject = needs && m.can("reject")
        val primary = if (needs) "allowOnce" else m.teamAction
        val primaryLabel = when {
            needs -> env.str(if (wide) R.string.widget_v2_allow else R.string.widget_v2_allow_short)
            m.teamAction == "approvePlan" -> env.str(R.string.widget_v2_approve)
            else -> env.str(R.string.widget_v2_resume)
        }
        if (wide && reject) {
            env.paintButton(v, R.id.wc_btn1, env.str(R.string.widget_v2_reject), false, env.action(m, "reject"))
            env.paintButton(v, R.id.wc_btn2, openLabel, false, openIntent)
        } else {
            env.paintButton(v, R.id.wc_btn1, openLabel, false, openIntent)
        }
        if (allow || team) env.paintButton(v, R.id.wc_btn3, primaryLabel, true, env.action(m, primary))
    }

    private fun bottomAsk(v: RemoteViews, m: WidgetRowModel) {
        v.setViewVisibility(R.id.wc_buttons, View.GONE)
        v.setViewVisibility(R.id.wc_ask, View.VISIBLE)
        val busy = m.lead == WidgetLayoutPolicy.Lead.WORKING
        v.setTextViewText(
            R.id.wc_ask_text,
            env.str(
                when {
                    env.settings -> R.string.widget_v2_background_settings
                    busy -> R.string.widget_v2_steer_it
                    else -> R.string.widget_v2_ask_followup
                }
            )
        )
        v.setTextColor(R.id.wc_ask_text, g.muted)
        WidgetGraphite.tint(v, R.id.wc_ask, g.pill)
        v.setOnClickPendingIntent(
            R.id.wc_ask,
            if (env.settings) {
                SessionWidgetIntents.backgroundSettingsIntent(env.context, env.id)
            } else {
                env.open(m.session)
            }
        )
        if (env.settings) v.setViewVisibility(R.id.wc_mic, View.GONE) else env.paintMic(v, env.micIntent(m))
    }
}

private const val STORY_META_SP = 12f
private const val STORY_PREVIEW_SP = 13f
private const val STORY_TITLE_SP = 16f
private const val STORY_PREVIEW_MAX = 4
private const val STORY_TITLE_MAX_NARROW = 3
private const val ASK_QUESTION_WIDE_SP = 15f
private const val ASK_QUESTION_SP = 14f
private const val ASK_FILE_SP = 13f
private const val ASK_DETAIL_SP = 12f

/** The middle of a 2x2 or 4x2 card: the story of a turn, or the question it is waiting on. */
internal class WidgetCardBodyBinder(private val env: WidgetRowEnv) {
    private val g = env.g

    fun bindStory(v: RemoteViews, m: WidgetRowModel, wide: Boolean, inner: Float, frame: SessionWidgetFrame) {
        v.setTextViewText(R.id.wc_title, m.title)
        v.setTextColor(R.id.wc_title, g.text)
        val working = m.lead == WidgetLayoutPolicy.Lead.WORKING
        // A working card has its time in the header and its live text as the body, as the list does.
        val body = if (working) WidgetStatusRules.liveBody(m.step, m.last) else m.reply
        val subText = if (m.lead == WidgetLayoutPolicy.Lead.READY && !wide) env.copy.ago(m.updatedAt) else ""
        val metaNeed = WidgetLayoutPolicy.estimateLines(subText, inner, STORY_META_SP, false, 2)
        val previewNeed = if (wide || working) {
            WidgetLayoutPolicy.estimateLines(body, inner, STORY_PREVIEW_SP, false, STORY_PREVIEW_MAX)
        } else {
            0
        }
        val titleNeed = WidgetLayoutPolicy.estimateLines(
            m.title, inner, STORY_TITLE_SP, true, if (wide) 2 else STORY_TITLE_MAX_NARROW
        )
        val lines = WidgetLayoutPolicy.cardLines(frame.effectiveHeightDp, titleNeed, metaNeed, previewNeed)
        v.setInt(R.id.wc_title, "setMaxLines", lines.title)
        paintStoryLines(v, lines, subText, body)
    }

    private fun paintStoryLines(v: RemoteViews, lines: WidgetLayoutPolicy.CardLines, subText: String, body: String) {
        v.setViewVisibility(R.id.wc_live, View.GONE)
        v.setViewVisibility(R.id.wc_sub, if (subText.isBlank()) View.GONE else View.VISIBLE)
        v.setTextViewText(R.id.wc_sub, subText)
        v.setTextColor(R.id.wc_sub, g.muted)
        v.setInt(R.id.wc_live, "setMaxLines", lines.meta.coerceAtLeast(1))
        v.setInt(R.id.wc_sub, "setMaxLines", lines.meta.coerceAtLeast(1))
        if (lines.meta == 0) {
            v.setViewVisibility(R.id.wc_live, View.GONE)
            v.setViewVisibility(R.id.wc_sub, View.GONE)
        }
        v.setViewVisibility(R.id.wc_preview, if (lines.preview > 0) View.VISIBLE else View.GONE)
        if (lines.preview > 0) {
            v.setTextViewText(R.id.wc_preview, body)
            v.setTextColor(R.id.wc_preview, g.subtle)
            v.setInt(R.id.wc_preview, "setMaxLines", lines.preview)
        }
    }

    fun bindAsk(v: RemoteViews, m: WidgetRowModel, wide: Boolean, inner: Float, frame: SessionWidgetFrame) {
        v.setViewVisibility(R.id.wc_title, View.GONE)
        val file = askFile(m, wide)
        val details = askDetails(m, wide)
        val questionSp = if (wide) ASK_QUESTION_WIDE_SP else ASK_QUESTION_SP
        val lines = WidgetLayoutPolicy.askLines(
            frame.effectiveHeightDp,
            WidgetLayoutPolicy.estimateLines(m.question, inner, questionSp, true, 2),
            WidgetLayoutPolicy.estimateLines(file, inner, ASK_FILE_SP, false, 2).coerceAtLeast(1),
            details.map { WidgetLayoutPolicy.estimateLines(it, inner, ASK_DETAIL_SP, false, 2).coerceAtLeast(1) }
        )
        // The question sits right under the header, as a Ready title does; spare height goes above the buttons.
        v.setViewVisibility(R.id.wc_q, View.VISIBLE)
        v.setTextViewText(R.id.wc_q, m.question)
        v.setTextColor(R.id.wc_q, g.text)
        v.setTextViewTextSize(R.id.wc_q, android.util.TypedValue.COMPLEX_UNIT_SP, questionSp)
        v.setInt(R.id.wc_q, "setMaxLines", lines.question)
        v.setViewVisibility(R.id.wc_file, if (lines.file > 0 && file.isNotBlank()) View.VISIBLE else View.GONE)
        v.setInt(R.id.wc_file, "setMaxLines", lines.file.coerceAtLeast(1))
        v.setTextViewText(R.id.wc_file, file)
        v.setTextColor(R.id.wc_file, g.text)
        v.setViewVisibility(R.id.wc_live, View.GONE)
        v.setViewVisibility(R.id.wc_preview, View.GONE)
        paintAskDetails(v, details, lines.details)
    }

    private fun askFile(m: WidgetRowModel, wide: Boolean): String =
        if (wide) {
            m.ask?.optString("path").orEmpty().ifBlank { m.ask?.optString("file").orEmpty() }
        } else {
            m.ask?.optString("file").orEmpty()
        }

    /** Real context, in this order: the folder (unless the full path already says it), where it
     * came from, and the last thing the conversation said. */
    private fun askDetails(m: WidgetRowModel, wide: Boolean): List<String> = buildList {
        if (m.dir.isNotBlank() && !(wide && m.ask?.optString("path").orEmpty().isNotBlank())) {
            add(env.copy.inDir(m.dir))
        }
        env.copy.fromTitle(m.title).takeIf { it.isNotBlank() }?.let { add(it) }
        m.last.takeIf { it.isNotBlank() }?.let { add(it) }
    }

    private fun paintAskDetails(v: RemoteViews, details: List<String>, given: List<Int>) {
        val slots = listOf(R.id.wc_sub, R.id.wc_d2, R.id.wc_d3)
        slots.forEachIndexed { i, id ->
            val lineCount = given.getOrNull(i) ?: 0
            if (lineCount > 0 && i < details.size) {
                v.setViewVisibility(id, View.VISIBLE)
                v.setTextViewText(id, details[i])
                v.setTextColor(id, g.muted)
                v.setInt(id, "setMaxLines", lineCount)
            } else {
                v.setViewVisibility(id, View.GONE)
            }
        }
    }
}
