package io.github.eslamasabry.opencode_mobile

/** Every widget entry the launcher picker offers. Each entry is its own receiver (a launcher
 * reads one size per provider, so sizes are published as separate entries) and every one of
 * them renders through the same renderer. Anything that redraws or checks widgets walks this
 * list, never a single class. */
object WidgetProviders {
    private const val WIDE_CELLS = 4

    val sessions: List<Class<out SessionsWidgetProvider>> = listOf(
        SessionsWidgetProvider::class.java,
        SessionsWideWidgetProvider::class.java,
        SessionsListWidgetProvider::class.java,
        SessionsStripWidgetProvider::class.java,
    )
    val usage: List<Class<out UsageWidgetProvider>> = listOf(
        UsageWidgetProvider::class.java,
        UsageWideWidgetProvider::class.java,
    )

    /** Class names, for the manifest and for ownership checks. */
    val sessionNames: List<String> get() = sessions.map { it.name }
    val usageNames: List<String> get() = usage.map { it.name }
    val allNames: Set<String> get() = (sessionNames + usageNames).toSet()

    /** The picker size each entry is declared at, in launcher cells (width, height). */
    val sessionCells: Map<String, Pair<Int, Int>> = mapOf(
        SessionsWidgetProvider::class.java.name to (2 to 2),
        SessionsWideWidgetProvider::class.java.name to (WIDE_CELLS to 2),
        SessionsListWidgetProvider::class.java.name to (WIDE_CELLS to WIDE_CELLS),
        SessionsStripWidgetProvider::class.java.name to (WIDE_CELLS to 1),
    )
    val usageCells: Map<String, Pair<Int, Int>> = mapOf(
        UsageWidgetProvider::class.java.name to (2 to 2),
        UsageWideWidgetProvider::class.java.name to (WIDE_CELLS to 2),
    )
}

/** "Conversation, wide": the 4x2 entry. Same widget, a different size in the picker. */
class SessionsWideWidgetProvider : SessionsWidgetProvider()

/** "Conversations list": the 4x4 entry. */
class SessionsListWidgetProvider : SessionsWidgetProvider()

/** "Conversation strip": the 4x1 entry. */
class SessionsStripWidgetProvider : SessionsWidgetProvider()

/** "Usage, wide": the 4x2 entry. */
class UsageWideWidgetProvider : UsageWidgetProvider()
