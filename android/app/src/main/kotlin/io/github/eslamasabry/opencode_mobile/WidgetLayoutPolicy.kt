package io.github.eslamasabry.opencode_mobile

/** Pure layout and presentation rules shared by the widget renderers. */
object WidgetLayoutPolicy {
    /** Which header phrase to show: see [WidgetStatusRules.summary]. */
    enum class Summary { IDLE, RUNNING, NEEDS, BOTH }

    private const val BOLD_GLYPH_EM = 0.54f
    private const val REGULAR_GLYPH_EM = 0.48f

    /** Whole lines only. Estimates use the average glyph width of the text size, so a
     * line count errs high (a line too many costs one preview line, never a cut word). */
    fun estimateLines(text: String, widthDp: Float, textSp: Float, bold: Boolean, maxLines: Int): Int {
        if (text.isBlank()) return 0
        val perLine = (widthDp / (textSp * if (bold) BOLD_GLYPH_EM else REGULAR_GLYPH_EM)).toInt().coerceAtLeast(1)
        var lines = 1
        var used = 0
        for (word in text.trim().split(Regex("\\s+"))) {
            val len = word.length
            if (used == 0) used = len
            else if (used + 1 + len <= perLine) used += 1 + len
            else { lines++; used = len }
            while (used > perLine) { lines++; used -= perLine }
        }
        return lines.coerceAtMost(maxLines)
    }

    /** The card's vertical budget, in dp at font scale 1. Lines are 21 (title), 16 (small),
     * 18 (preview); the rest is padding, the status line and the bottom pill. */
    private const val CARD_FIXED_DP = 102
    private const val TITLE_LINE_DP = 21
    private const val META_LINE_DP = 16
    private const val PREVIEW_LINE_DP = 18
    private const val PREVIEW_GAP_DP = 6
    private const val MAX_PREVIEW_LINES = 4

    data class CardLines(val title: Int, val meta: Int, val preview: Int)

    /** Spend the height on, in order: one title line, one meta line, the rest of the title,
     * the second meta line, then whole preview lines. Nothing is asked for that does not fit. */
    fun cardLines(effectiveHeightDp: Int, titleNeed: Int, metaNeed: Int, previewNeed: Int): CardLines {
        var left = effectiveHeightDp - CARD_FIXED_DP - TITLE_LINE_DP
        var title = 1
        var meta = 0
        if (metaNeed >= 1 && left >= META_LINE_DP) { meta = 1; left -= META_LINE_DP }
        while (title < titleNeed && left >= TITLE_LINE_DP) { title++; left -= TITLE_LINE_DP }
        if (meta in 1 until metaNeed && left >= META_LINE_DP) { meta++; left -= META_LINE_DP }
        val preview = if (previewNeed > 0 && left >= PREVIEW_GAP_DP + PREVIEW_LINE_DP)
            minOf(previewNeed, MAX_PREVIEW_LINES, (left - PREVIEW_GAP_DP) / PREVIEW_LINE_DP) else 0
        return CardLines(title, meta, preview)
    }

    private const val ASK_FIXED_DP = 100
    private const val ASK_QUESTION_LINE_DP = 19
    private const val ASK_DETAIL_LINE_DP = 16
    private const val ASK_DETAIL_GAP_DP = 4

    /** [details] holds the whole lines given to each candidate line of context, in the order
     * they were offered; 0 means that one is left out (and so is every later one). */
    data class AskLines(val question: Int, val file: Int, val details: List<Int>)

    /** A needs-you card: the question, then the file or command, then as much real context as fits
     * in whole lines, in the order given (each wants [detailNeeds] lines, at most 2). A second
     * question line is the last thing that is paid for. Nothing is padded: what does not fit is
     * dropped and the caller pins the block to the buttons. */
    fun askLines(effectiveHeightDp: Int, questionNeed: Int, fileNeed: Int = 1,
        detailNeeds: List<Int> = emptyList()): AskLines {
        var left = effectiveHeightDp - ASK_FIXED_DP - ASK_QUESTION_LINE_DP
        var file = 0
        var lines = fileNeed.coerceIn(1, 2)
        while (lines > 0) {
            val cost = ASK_DETAIL_GAP_DP + lines * ASK_DETAIL_LINE_DP
            if (left >= cost) { file = lines; left -= cost; break }
            lines--
        }
        val details = mutableListOf<Int>()
        if (file > 0) for (need in detailNeeds) {
            val room = (left - ASK_DETAIL_GAP_DP) / ASK_DETAIL_LINE_DP
            val given = minOf(need.coerceIn(1, 2), room)
            if (given < 1) break
            details.add(given); left -= ASK_DETAIL_GAP_DP + given * ASK_DETAIL_LINE_DP
        }
        val question = if (questionNeed > 1 && left >= ASK_QUESTION_LINE_DP) 2 else 1
        return AskLines(question, file, details + List(detailNeeds.size - details.size) { 0 })
    }

    private const val LIST_FIXED_DP = 86
    private const val LIST_ROW_DP = 57
    private const val MAX_LIST_ROWS = 8

    /** Whole rows only: the header, the new-conversation pill and the padding come first. */
    fun listRows(effectiveHeightDp: Int, available: Int): Int =
        ((effectiveHeightDp - LIST_FIXED_DP) / LIST_ROW_DP)
            .coerceIn(1, MAX_LIST_ROWS)
            .coerceAtMost(available.coerceAtLeast(1))

    /** The list's Reject pill needs the width: the dot, the question and both pills share a row,
     * and the question must keep room for about fifteen characters. A 4-cell list on a narrow
     * launcher (about 250dp) keeps Allow alone; the card layout and the app still offer Reject. */
    const val LIST_REJECT_MIN_WIDTH_DP = 290f
    fun listShowsReject(widthDp: Float): Boolean = widthDp >= LIST_REJECT_MIN_WIDTH_DP

    private const val LIST_BODY_LINE_DP = 18
    private const val LIST_BODY_GAP_DP = 14
    private const val MAX_LIST_BODY_LINES = 5

    /** Whole lines of the top row's own text (its latest reply or live line) in the height the
     * rows leave over. 0 when the rows fill the card. */
    fun listBodyLines(effectiveHeightDp: Int, rows: Int): Int {
        val left = effectiveHeightDp - LIST_FIXED_DP - rows * LIST_ROW_DP - LIST_BODY_GAP_DP
        return (left / LIST_BODY_LINE_DP).coerceIn(0, MAX_LIST_BODY_LINES)
    }

    enum class Ago { NOW, MINUTES, HOURS, YESTERDAY, WEEKDAY, DATE }
    data class Elapsed(val kind: Ago, val count: Int = 0, val label: String = "")

    /** A short question that names the file ("Write outside-test.txt?"); the full question
     * when the call or the file is not known. */
    fun shortAsk(file: String, template: String?, question: String): String =
        if (file.isBlank() || template == null) question else template.format(file)

    /** The header of a card after its status word: "my-app · 1 min", never an empty part. */
    fun headerTail(project: String, whenText: String): String = join(project, whenText)


    private const val HEADER_SIDE_PADDING_DP = 15f
    private const val HEADER_TEXT_SP = 12f

    /** The header's tail on a card [widthDp] wide: the project and the time when they fit on the
     * one line with the status word, else the time alone (the time is the news), never a cut. */
    fun headerTailFit(status: String, project: String, whenText: String, widthDp: Float): String {
        val full = headerTail(project, whenText)
        val line = join(status, full)
        val fits = estimateLines(line, widthDp - HEADER_SIDE_PADDING_DP, HEADER_TEXT_SP, true, 2) <= 1
        return if (whenText.isBlank() || fits) full else whenText
    }

    /** Non-blank parts joined with the separator; no dangling dots. */
    fun join(vararg parts: String, separator: String = " · "): String =
        parts.filter { it.isNotBlank() }.joinToString(separator)

    /** Which words lead a card or row. Offline wins over everything but a request. */
    enum class Lead { NEEDS_YOU, OFFLINE, WORKING, READY }
}
