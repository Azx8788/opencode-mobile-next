package io.github.eslamasabry.opencode_mobile

import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.w3c.dom.Element

/** Checks the XML used by RemoteViews without needing a launcher or emulator. */
class WidgetSessionCardLayoutTest {
    @Test fun everyLayoutKeepsTheBackgroundIdAndReadsInTheContentDirection() {
        for (name in listOf("widget_sessions.xml", "widget_sessions_card.xml", "widget_sessions_compact.xml",
            "widget_sessions_strip.xml", "widget_sessions_card_single.xml")) {
            val root = layout(name).documentElement
            assertEquals(name, "@android:id/background", root.android("id"))
            assertEquals(name, "locale", root.android("layoutDirection"))
            assertEquals(name, "@drawable/widget_card_bg", root.android("background"))
        }
    }

    @Test fun tinyShowsAWholeTitleInUpToTwoLines() {
        val title = view(layout("widget_sessions_compact.xml"), "wc_title")
        assertEquals("2", title.android("maxLines"))
        assertEquals("wrap_content", title.android("layout_height"))
        assertEquals("end", title.android("ellipsize"))
    }

    @Test fun stripKeepsTitleAndStatusOnOneLineEachWithTheActionOnTheRight() {
        val doc = layout("widget_sessions_strip.xml")
        for (id in listOf("wc_title", "wc_sub")) assertEquals(id, "1", view(doc, id).android("maxLines"))
        val children = children(doc.documentElement)
        assertEquals("wc_mic", children[children.size - 2].android("id").removePrefix("@+id/"))
        assertEquals("@+id/wc_btn1", children.last().android("id"))
    }

    @Test fun cardPageSpendsItsHeightOnContentWithTheActionAtTheBottom() {
        val doc = layout("widget_session_v2_row.xml")
        val card = doc.documentElement
        assertEquals("match_parent", card.android("layout_height"))
        val order = children(card).map { it.android("id").removePrefix("@+id/") }
        assertTrue(order.indexOf("wc_title") < order.indexOf("wc_sub"))
        assertTrue(order.indexOf("wc_preview") < order.indexOf("wc_ask"))
        assertEquals("wc_buttons", order.last())
        assertEquals("wc_ask", order[order.size - 2])
        // The status line: dot, status and project share one row; the project takes the slack.
        assertEquals("1", view(doc, "wc_project").android("layout_weight"))
        // A needs-you file path is code: left to right whatever the language.
        assertEquals("ltr", view(doc, "wc_file").android("textDirection"))
    }

    @Test fun listRowsCarryARejectPillBeforeAllowThatStaysHiddenUntilItFits() {
        for (name in listOf("widget_session_v2_list_row.xml", "widget_session_v2_list_row_fixed.xml")) {
            val doc = layout(name)
            val reject = view(doc, "wc_btn2")
            assertEquals(name, "gone", reject.android("visibility"))
            assertEquals(name, "1", view(doc, "wc_title").android("maxLines"))
            val line = view(doc, "wc_btn1").parentNode.childNodes
            val ids = (0 until line.length).map { line.item(it) }.filterIsInstance<Element>()
                .map { it.android("id").removePrefix("@+id/") }
            assertTrue(name, ids.indexOf("wc_btn2") in 0 until ids.indexOf("wc_btn1"))
        }
    }

    @Test fun listRejectNeedsTheWidthToKeepTheQuestionReadable() {
        assertTrue(!WidgetLayoutPolicy.listShowsReject(250f))
        assertTrue(!WidgetLayoutPolicy.listShowsReject(289f))
        assertTrue(WidgetLayoutPolicy.listShowsReject(290f))
        assertTrue(WidgetLayoutPolicy.listShowsReject(360f))
    }

    @Test fun listRowsShareTheHeightSoNoGapIsLeftBelowTheLastRow() {
        val row = layout("widget_session_v2_list_row.xml").documentElement
        assertEquals("1", row.android("layout_weight"))
        assertEquals("0dp", row.android("layout_height"))
        val doc = layout("widget_sessions.xml")
        assertEquals("1", view(doc, "wc_rows").android("layout_weight"))
        assertEquals("1", view(layout("widget_session_v2_list_row.xml"), "wc_title").android("maxLines"))
    }

    @Test fun noOldCopyOrModelIdSurvivesInTheWidgetResources() {
        val resources = sequenceOf(File("src/main/res"), File("app/src/main/res"), File("android/app/src/main/res"))
            .first { it.isDirectory }
        val text = resources.walkTopDown().filter { it.isFile && it.name == "widget_v2_strings.xml" }
            .joinToString("\n") { it.readText() }
        for (banned in listOf("All caught up", "Connects when you tap", "Background connection unavailable",
            "last known", "Open conversation")) {
            assertTrue(banned, !text.contains(banned))
        }
        // Every English string has an Arabic counterpart.
        fun names(dir: String) = Regex("name=\"([a-z0-9_]+)\"")
            .findAll(File(resources, "$dir/widget_v2_strings.xml").readText()).map { it.groupValues[1] }.toSet()
        assertEquals(names("values"), names("values-ar"))
    }

    private fun children(parent: Element): List<Element> =
        (0 until parent.childNodes.length).map { parent.childNodes.item(it) }.filterIsInstance<Element>()

    @Test fun launcherCanResizeDefaultTwoByTwoCardDownToOneCell() {
        val source = sequenceOf(File("src/main/res/xml/widget_sessions_info.xml"),
            File("app/src/main/res/xml/widget_sessions_info.xml"),
            File("android/app/src/main/res/xml/widget_sessions_info.xml")).first { it.isFile }
        val provider = DocumentBuilderFactory.newInstance().apply { isNamespaceAware = true }
            .newDocumentBuilder().parse(source).documentElement
        assertEquals("48dp", provider.android("minResizeWidth"))
        assertEquals("40dp", provider.android("minResizeHeight"))
        assertEquals("2", provider.android("targetCellWidth"))
        assertEquals("2", provider.android("targetCellHeight"))
        assertEquals("horizontal|vertical", provider.android("resizeMode"))
    }

    @Test fun wallpaperMutedCopyFollowsSystemThemeInsteadOfCachedAppTheme() {
        val source = sequenceOf(File("src/main/kotlin/io/github/eslamasabry/opencode_mobile/WidgetV2Style.kt"),
            File("app/src/main/kotlin/io/github/eslamasabry/opencode_mobile/WidgetV2Style.kt"),
            File("android/app/src/main/kotlin/io/github/eslamasabry/opencode_mobile/WidgetV2Style.kt"))
            .first { it.isFile }.readText()
        val palette = source.substringAfter("return Palette(background,").substringBefore("private fun themeColor")
        assertTrue(palette.contains("else appText, if (wallpaper) context.getColor("))
        assertTrue(
            palette.contains(
                "if (dark) android.R.color.system_neutral1_300 else android.R.color.system_neutral1_700"
            )
        )
        assertTrue(palette.contains(") else appMuted, accent)"))
    }

    private fun layout(name: String): org.w3c.dom.Document {
        val source = sequenceOf(File("src/main/res/layout/$name"), File("app/src/main/res/layout/$name"),
            File("android/app/src/main/res/layout/$name")).first { it.isFile }
        return DocumentBuilderFactory.newInstance().apply { isNamespaceAware = true }
            .newDocumentBuilder().parse(source)
    }

    private fun view(doc: org.w3c.dom.Document, id: String): Element {
        val all = doc.getElementsByTagName("*")
        return (0 until all.length).map { all.item(it) as Element }
            .first { it.android("id") == "@+id/$id" }
    }

    private fun Element.android(name: String): String =
        getAttributeNS("http://schemas.android.com/apk/res/android", name)
}
