package io.github.eslamasabry.opencode_mobile

import android.content.Context
import android.widget.RemoteViews
import org.json.JSONObject

/** Binds a conversation to the card, strip, tiny and list layouts without changing the snapshot. */
internal class SessionWidgetRow(
    context: Context,
    id: Int,
    snapshot: JSONObject,
    state: SessionWidgetSnapshot,
    g: WidgetGraphite
) {
    private val env = WidgetRowEnv(context, id, snapshot, state, g)
    private val text = WidgetRowText(env)
    private val strip = WidgetStripBinder(env, text)
    private val cards = WidgetPageBinder(env, text)
    private val list = WidgetListBinder(env, text)

    // ---- 2x1 ----

    fun bindTiny(views: RemoteViews, session: JSONObject?, frame: SessionWidgetFrame) =
        strip.bindTiny(views, session, frame)

    // ---- 4x1 ----

    fun bindStrip(views: RemoteViews, session: JSONObject?, frame: SessionWidgetFrame) =
        strip.bindStrip(views, session, frame)

    // ---- 2x2 and 4x2 ----

    fun page(session: JSONObject?, size: WidgetV2Policy.Size, frame: SessionWidgetFrame): RemoteViews =
        RemoteViews(env.context.packageName, R.layout.widget_session_v2_row).also {
            cards.bindPage(it, session, size, frame)
        }

    /** Binds one card onto [v]: a flipper page, or the widget itself when there is only one card
     * (no flipper, so no slide on every refresh). */
    fun bindPage(v: RemoteViews, session: JSONObject?, size: WidgetV2Policy.Size, frame: SessionWidgetFrame) =
        cards.bindPage(v, session, size, frame)

    // ---- 4x4 and taller ----

    fun bindList(views: RemoteViews, frame: SessionWidgetFrame) = list.bindList(views, frame)
}
