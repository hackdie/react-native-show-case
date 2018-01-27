package com.hackdie.rnshowcase

import android.view.View
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.bridge.UiThreadUtil
import smartdevelop.ir.eram.showcaseviewlib.GuideView

class RNShowCaseModule(private val reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "RNShowCase"
    }

    @ReactMethod
    fun show(viewTag: Int, title: String, description: String) {

        val view = reactContext.currentActivity!!.findViewById<View>(viewTag)
        if(view != null)
            UiThreadUtil.runOnUiThread {
                GuideView.Builder(reactContext.currentActivity)
                        .setTitle(title)
                        .setContentText(description)
                        .setTargetView(view)
                        .build()
                        .show()
            }
    }


}