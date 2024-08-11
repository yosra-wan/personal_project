package com.example.verd_ai

import io.flutter.embedding.android.FlutterActivity
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.crashes.Crashes;

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        AppCenter.start(getApplication(), "2174cc5f-e585-417b-bc66-e018a54c25bf",
                        Analytics::class.java, Crashes::class.java)
    }
}
