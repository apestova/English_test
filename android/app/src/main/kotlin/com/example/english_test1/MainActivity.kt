package com.example.english_test1

import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull
//import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import android.content.Context
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView
//import android.content.Context
import io.flutter.plugin.common.StandardMessageCodec
//import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory



class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        val registry = flutterEngine.platformViewsController.registry
        registry.registerViewFactory("platform_text_view", AndroidTextViewFactory())
    }
}


class AndroidTextView(context: Context) : PlatformView {
    val contentView: TextView = TextView(context)
    override fun getView(): View {
        return contentView
    }
    override fun dispose() {}
}

class AndroidTextViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        val androidTextView = AndroidTextView(context)
        androidTextView.contentView.id = viewId
        val params = args?.let { args as Map<*, *> }
        val text = params?.get("text") as CharSequence?
        text?.let {
            androidTextView.contentView.text = it
        }
        return androidTextView
    }
}

