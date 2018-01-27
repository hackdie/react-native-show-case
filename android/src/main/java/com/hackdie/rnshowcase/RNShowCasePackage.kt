package com.hackdie.rnshowcase

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.JavaScriptModule
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ViewManager
import java.util.ArrayList

class RNShowCasePackage() : ReactPackage {

    override fun createNativeModules(reactContext: ReactApplicationContext?): MutableList<NativeModule> {
        val modules = ArrayList<NativeModule>()
        modules.add(RNShowCaseModule(reactContext!!))
        return modules
    }

    override fun createViewManagers(reactContext: ReactApplicationContext): List<ViewManager<*, *>> {
        return emptyList()
    }
}