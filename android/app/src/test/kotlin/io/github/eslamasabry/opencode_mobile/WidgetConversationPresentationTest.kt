package io.github.eslamasabry.opencode_mobile

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WidgetConversationPresentationTest {
    @Test fun headerShowsOnlyNonZeroCountsOrACalmPhrase() {
        assertEquals(WidgetLayoutPolicy.Summary.IDLE, WidgetStatusRules.summary(0, 0))
        assertEquals(WidgetLayoutPolicy.Summary.RUNNING, WidgetStatusRules.summary(2, 0))
        assertEquals(WidgetLayoutPolicy.Summary.NEEDS, WidgetStatusRules.summary(0, 1))
        assertEquals(WidgetLayoutPolicy.Summary.BOTH, WidgetStatusRules.summary(1, 1))
    }

    @Test fun acceptedAllowWithRunningTurnAndNoStopProofKeepsNormalOnDemandPresentation() {
        val connection = WidgetV2Policy.connection(WidgetV2Policy.ConnectionState(
            version = 2, connected = false, serviceActive = false,
            onDemandAvailable = true,
            recoveryRequired = WidgetV2Policy.needsBackgroundSettings("accepted", null),
        ))
        assertEquals(WidgetV2Policy.Connection.ON_DEMAND, connection)
        assertFalse(WidgetStatusRules.rowNeedsSettings(connection))
        assertFalse(WidgetV2Policy.actionEnabled(connection, "stop", emptySet(), false))
        assertEquals("lastWorking", WidgetStatusRules.status(false, true, false))
        assertFalse(WidgetStatusRules.timerTicks(true, 1000, false))
    }

    @Test fun settledFollowUpShowsReadyAndDoesNotBecomeRecovery() {
        assertEquals("ready", WidgetStatusRules.status(false, false, false))
        assertFalse(WidgetStatusRules.rowNeedsSettings(WidgetV2Policy.Connection.ON_DEMAND))
        assertTrue(WidgetStatusRules.rowNeedsSettings(WidgetV2Policy.Connection.BACKGROUND_SETTINGS))
    }

    @Test fun attentionTakesPrecedenceAndOnlyLiveWorkingUsesCurrentStatus() {
        assertEquals("needsYou", WidgetStatusRules.status(true, true, false))
        assertEquals("working", WidgetStatusRules.status(false, true, true))
        assertEquals("lastWorking", WidgetStatusRules.status(false, true, false))
    }

    @Test fun measuredUsageNeverUsesNeedsYouAmber() {
        for (remaining in 1..100) assertEquals("running", WidgetUsageStyle.usageRole(remaining))
        assertEquals("neutral", WidgetUsageStyle.usageRole(0))
    }

    @Test fun wallpaperAndSavedAccentsCannotMakeOrdinaryControlsRedOrAmber() {
        for (hue in listOf(0f, 20f, 40f, 60f, 350f)) {
            assertTrue(WidgetUsageStyle.reservedStatusHue(hue, 0.7f))
        }
        for (hue in listOf(120f, 180f, 210f, 270f)) {
            assertFalse(WidgetUsageStyle.reservedStatusHue(hue, 0.7f))
        }
        assertFalse(WidgetUsageStyle.reservedStatusHue(30f, 0.1f))
    }

    @Test fun actualLauncherSizePreservesTwoByTwoHeightInsteadOfShorterPreset() {
        assertEquals(listOf(210 to 224, 388 to 224), WidgetSizePolicy.launcherSizes(
            listOf(210f to 224f, 388f to 224f)))
        assertEquals(emptyList<Pair<Int, Int>>(), WidgetSizePolicy.launcherSizes(emptyList()))
    }

    @Test fun launcherSizesRejectInvalidValuesDeduplicateAndRespectRemoteViewsLimit() {
        val invalid = listOf(Float.NaN to 224f, 210f to Float.POSITIVE_INFINITY,
            -1f to 224f, 210f to 0f, 210f to 2001f)
        assertEquals(emptyList<Pair<Int, Int>>(), WidgetSizePolicy.launcherSizes(invalid))
        assertEquals(listOf(210 to 224), WidgetSizePolicy.launcherSizes(
            listOf(210f to 224f, 210.8f to 224.3f)))
        assertEquals(16, WidgetSizePolicy.launcherSizes((1..100).map { it.toFloat() to 224f }).size)
    }

    @Test fun cardSpendsItsHeightOnWholeLinesInPriorityOrder() {
        // 2x2 at 180dp (the mock): a two-line title and a two-line live line fit; a third title line does not.
        assertEquals(WidgetLayoutPolicy.CardLines(2, 2, 0), WidgetLayoutPolicy.cardLines(180, 2, 2, 0))
        assertEquals(WidgetLayoutPolicy.CardLines(2, 1, 0), WidgetLayoutPolicy.cardLines(180, 3, 1, 0))
        // The owner's 223dp card holds three title lines and two meta lines.
        assertEquals(WidgetLayoutPolicy.CardLines(3, 2, 0), WidgetLayoutPolicy.cardLines(223, 3, 2, 0))
        // Too short for any meta line: the title keeps its one line, nothing is clipped.
        assertEquals(WidgetLayoutPolicy.CardLines(1, 0, 0), WidgetLayoutPolicy.cardLines(110, 3, 2, 0))
        // 4x2 as 2x2 plus whole reply lines; never more than asked or four.
        assertEquals(WidgetLayoutPolicy.CardLines(1, 0, 2), WidgetLayoutPolicy.cardLines(180, 1, 0, 3))
        assertEquals(WidgetLayoutPolicy.CardLines(1, 0, 4), WidgetLayoutPolicy.cardLines(300, 1, 0, 9))
        assertEquals(0, WidgetLayoutPolicy.cardLines(300, 1, 0, 0).preview)
        // Whatever the height, the lines chosen fit in it.
        for (h in 100..420) for (preview in 0..5) {
            val c = WidgetLayoutPolicy.cardLines(h, 3, 2, preview)
            val used = 102 + c.title * 21 + c.meta * 16 + if (c.preview > 0) 6 + c.preview * 18 else 0
            assertTrue("h=$h $c", used <= h || (c.title == 1 && c.meta == 0 && c.preview == 0))
        }
    }

    @Test fun needsYouCardShowsTheQuestionThenTheFileThenAsMuchContextAsFits() {
        // Too short for anything but the question.
        assertEquals(
            WidgetLayoutPolicy.AskLines(1, 0, listOf(0, 0)),
            WidgetLayoutPolicy.askLines(110, 2, 1, listOf(1, 1))
        )
        // The 223dp card: the file, the folder, where it came from and two lines of the last reply fit.
        val roomy = WidgetLayoutPolicy.askLines(223, 1, 1, listOf(1, 1, 2))
        assertEquals(1, roomy.file)
        assertEquals(listOf(1, 1, 2), roomy.details)
        // Context is dropped from the end, never from the front.
        val tighter = WidgetLayoutPolicy.askLines(180, 1, 1, listOf(1, 1, 2))
        assertEquals(listOf(1, 1), tighter.details.takeWhile { it > 0 })
        assertEquals(0, tighter.details.last())
        // A long command takes a second line when there is room, never a middle cut.
        assertEquals(2, WidgetLayoutPolicy.askLines(223, 1, 2).file)
        assertEquals(1, WidgetLayoutPolicy.askLines(150, 1, 2).file)
        // Whatever the height, what is chosen fits.
        for (h in 100..420) {
            val a = WidgetLayoutPolicy.askLines(h, 2, 2, listOf(1, 1, 2))
            val used = 100 + 19 + (if (a.question == 2) 19 else 0) + (if (a.file > 0) 4 + a.file * 16 else 0) +
                a.details.filter { it > 0 }.sumOf { 4 + it * 16 }
            assertTrue("h=$h $a", used <= h || a.file == 0)
        }
    }

    @Test fun aListThatDoesNotFillGivesItsTopRowWholeLinesOfItsOwnText() {
        assertEquals(5, WidgetLayoutPolicy.listBodyLines(375, 2))
        assertEquals(5, WidgetLayoutPolicy.listBodyLines(375, 3))
        assertEquals(2, WidgetLayoutPolicy.listBodyLines(375, 4))
        assertEquals(0, WidgetLayoutPolicy.listBodyLines(375, 5))
        assertEquals(0, WidgetLayoutPolicy.listBodyLines(120, 1))
    }

    @Test fun workingSinceReadsInMinutesThenHours() {
        assertEquals(null, WidgetElapsedPolicy.sinceUnit(1_000_000, 0))
        assertEquals(null, WidgetElapsedPolicy.sinceUnit(1_000_000, 960_000))
        assertEquals("min" to 3, WidgetElapsedPolicy.sinceUnit(1_000_000, 1_000_000 - 3 * 60_000L - 5_000))
        assertEquals("hour" to 2, WidgetElapsedPolicy.sinceUnit(10_000_000, 10_000_000 - 2 * 3_600_000L - 60_000))
    }

    @Test fun listFitsOnlyWholeRowsAndNeverMoreThanThereAre() {
        assertEquals(1, WidgetLayoutPolicy.listRows(300, 1))
        assertEquals(5, WidgetLayoutPolicy.listRows(375, 9))
        assertEquals(5, WidgetLayoutPolicy.listRows(375 + 57, 5))
        assertEquals(6, WidgetLayoutPolicy.listRows(375 + 57, 9))
        assertEquals(3, WidgetLayoutPolicy.listRows(1000, 3))
        assertEquals(8, WidgetLayoutPolicy.listRows(1000, 20))
        // Larger text divides the height first.
        assertEquals(3, WidgetLayoutPolicy.listRows((375 / 1.3f).toInt(), 9))
    }

    @Test fun rowsSortNeedsYouThenWorkingThenTheRest() {
        assertEquals(listOf(0, 1, 2), listOf(true to false, false to true, false to false)
            .map { WidgetStatusRules.rank(it.first, it.second) })
        // A conversation that needs you is needs-you even while its turn is still busy.
        assertEquals(0, WidgetStatusRules.rank(true, true))
    }

    @Test fun aTurnWaitingForYouIsNotAlsoCountedAsWorking() {
        assertEquals(1, WidgetStatusRules.workingCount(2, 1))
        assertEquals(0, WidgetStatusRules.workingCount(1, 1))
        assertEquals(0, WidgetStatusRules.workingCount(0, 1))
        assertEquals(3, WidgetStatusRules.workingCount(3, 0))
    }

    @Test fun workingCardHasItsTimeInTheHeaderAndItsLiveTextAsBody() {
        assertEquals("my-app · 1 min", WidgetLayoutPolicy.headerTail("my-app", "1 min"))
        assertEquals("1 min", WidgetLayoutPolicy.headerTail("", "1 min"))
        assertEquals("my-app", WidgetLayoutPolicy.headerTail("my-app", ""))
        // The live step wins; otherwise the latest reply, as the list's top row shows it.
        assertEquals("Editing x.dart", WidgetStatusRules.liveBody("Editing x.dart", "Done. Now let me look"))
        assertEquals("Done. Now let me look", WidgetStatusRules.liveBody("", "Done. Now let me look"))
        assertEquals("", WidgetStatusRules.liveBody("", ""))
        // On a narrow card the time wins over the project; on a wide one both fit.
        assertEquals("1 min", WidgetLayoutPolicy.headerTailFit("Working", "my-app", "1 min", 156f))
        assertEquals("my-app · 1 min", WidgetLayoutPolicy.headerTailFit("Working", "my-app", "1 min", 344f))
        assertEquals("my-app", WidgetLayoutPolicy.headerTailFit("Working", "my-app", "", 156f))
        // Under a minute there is no time yet, so the header is just the project.
        assertEquals(null, WidgetElapsedPolicy.sinceUnit(1_000_000, 1_000_000 - 30_000L))
    }

    @Test fun leadWordsNeverDuplicate() {
        assertEquals(WidgetLayoutPolicy.Lead.NEEDS_YOU, WidgetStatusRules.lead(true, true, true))
        assertEquals(WidgetLayoutPolicy.Lead.OFFLINE, WidgetStatusRules.lead(false, true, true))
        assertEquals(WidgetLayoutPolicy.Lead.WORKING, WidgetStatusRules.lead(false, true, false))
        assertEquals(WidgetLayoutPolicy.Lead.READY, WidgetStatusRules.lead(false, false, false))
        assertEquals("Ready · my-app", WidgetLayoutPolicy.join("Ready", "my-app"))
        assertEquals("my-app", WidgetLayoutPolicy.join("", "my-app", " "))
        assertEquals("", WidgetLayoutPolicy.join("", ""))
    }

    @Test fun shortQuestionNamesTheFileOrFallsBackToTheFullQuestion() {
        assertEquals("Write outside-test.txt?",
            WidgetLayoutPolicy.shortAsk("outside-test.txt", "Write %s?", "Write outside this project?"))
        assertEquals("Write outside this project?",
            WidgetLayoutPolicy.shortAsk("", "Write %s?", "Write outside this project?"))
        assertEquals("Use a tool?", WidgetLayoutPolicy.shortAsk("x", null, "Use a tool?"))
        // A file name with a percent sign is text, not a format.
        assertEquals("Write 100%.txt?", WidgetLayoutPolicy.shortAsk("100%.txt", "Write %s?", "q"))
    }

    @Test fun estimatedLinesErrHighAndAreCapped() {
        assertEquals(0, WidgetLayoutPolicy.estimateLines("", 150f, 16f, true, 3))
        assertEquals(1, WidgetLayoutPolicy.estimateLines("Fix it", 150f, 16f, true, 3))
        assertEquals(2, WidgetLayoutPolicy.estimateLines("Fix the flaky checkout test", 150f, 16f, true, 3))
        val long = "Create outside-test.txt with a greeting now please"
        assertEquals(3, WidgetLayoutPolicy.estimateLines(long, 150f, 16f, true, 3))
        assertEquals(2, WidgetLayoutPolicy.estimateLines(long, 150f, 16f, true, 2))
        assertEquals(1, WidgetLayoutPolicy.estimateLines("Create outside-test.txt with a greeting", 344f, 16f, true, 2))
    }

    @Test fun elapsedTimeReadsLikeAPhone() {
        val utc = java.util.TimeZone.getTimeZone("UTC")
        val us = java.util.Locale.US
        val now = 1_760_000_000_000L // 2025-10-09 08:53 UTC (a Thursday)
        fun at(ms: Long) = WidgetElapsedPolicy.elapsed(now, now - ms, utc, us)
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.NOW), at(30_000))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.MINUTES, 2), at(2 * 60_000))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.MINUTES, 59), at(59 * 60_000 + 59_000))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.HOURS, 1), at(61 * 60_000))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.YESTERDAY), at(12 * 3_600_000))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.WEEKDAY, label = "Mon"), at(3 * 86_400_000L))
        assertEquals(WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.DATE, label = "29 Sep"), at(10 * 86_400_000L))
        // A clock that ran backwards never shows a negative time.
        assertEquals(
            WidgetLayoutPolicy.Elapsed(WidgetLayoutPolicy.Ago.NOW),
            WidgetElapsedPolicy.elapsed(now, now + 5_000, utc, us),
        )
    }
}
