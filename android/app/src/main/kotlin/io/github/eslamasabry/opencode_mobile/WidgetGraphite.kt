package io.github.eslamasabry.opencode_mobile

import android.content.Context
import android.content.res.ColorStateList
import android.content.res.Configuration
import android.graphics.Color
import android.os.Build
import android.widget.RemoteViews
import org.json.JSONObject

/** The conversations widget's colours: the app's Graphite palette, dark or light.
 * Green is working and the mic, amber is needs-you, red is never used. */
internal data class WidgetGraphite(
    val dark: Boolean,
    val card: Int,
    val pill: Int,
    val text: Int,
    val muted: Int,
    val subtle: Int,
    val lead: Int,
    val green: Int,
    val amber: Int,
    val idle: Int,
    val divider: Int,
    val primary: Int,
    val onPrimary: Int,
    val onGreen: Int,
) {
    companion object {
        private val DARK = WidgetGraphite(true, 0xFF141518.toInt(), 0xFF22242A.toInt(), 0xFFF3F3F1.toInt(),
            0xFF8C8D89.toInt(), 0xFFC8C9C5.toInt(), 0xFFA9AAA6.toInt(), 0xFF3DDC8A.toInt(), 0xFFF5B544.toInt(),
            0xFF666764.toInt(), 0xFF22242A.toInt(), 0xFFF3F3F1.toInt(), 0xFF0B0C0E.toInt(), 0xFF03140B.toInt())
        private val LIGHT = WidgetGraphite(false, 0xFFFAFAF8.toInt(), 0xFFECECE6.toInt(), 0xFF1A1B1E.toInt(),
            0xFF6F706B.toInt(), 0xFF3F403D.toInt(), 0xFF55564F.toInt(), 0xFF087F43.toInt(), 0xFF8F5B00.toInt(),
            0xFFA3A49F.toInt(), 0xFFE3E3DD.toInt(), 0xFF1A1B1E.toInt(), 0xFFFAFAF8.toInt(), 0xFFFFFFFF.toInt())

        /** The app's own appearance when it published one, else the system's. */
        fun of(context: Context, snapshot: JSONObject?): WidgetGraphite {
            val appBackground = snapshot?.optJSONObject("appTheme")?.optLong("background")?.takeIf { it != 0L }?.toInt()
            val dark = if (appBackground != null) isDark(appBackground) else
                context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK ==
                    Configuration.UI_MODE_NIGHT_YES
            return if (dark) DARK else LIGHT
        }

        private const val LUMA_RED = 0.299
        private const val LUMA_GREEN = 0.587
        private const val LUMA_BLUE = 0.114
        private const val DARK_LUMA_BELOW = 128

        fun isDark(background: Int): Boolean {
            val luma = LUMA_RED * Color.red(background) + LUMA_GREEN * Color.green(background) +
                LUMA_BLUE * Color.blue(background)
            return luma < DARK_LUMA_BELOW
        }

        /** Tint a pill or circle background. Android 12+ tints the drawable; older Android
         * has only a flat fill, which still reads as a button. */
        fun tint(views: RemoteViews, id: Int, color: Int) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                views.setColorStateList(id, "setBackgroundTintList", ColorStateList.valueOf(color))
            } else {
                views.setInt(id, "setBackgroundColor", color)
            }
        }
    }
}
