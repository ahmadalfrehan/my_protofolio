package com.example.protofolio

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.PowerManager
import android.util.Log
import androidx.annotation.NonNull
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity : FlutterActivity() {
    private var sharedText: String = ""
    private val CHANNEL = "app.channel.shared.data"

    @RequiresApi(Build.VERSION_CODES.M)
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                if (call.method == "Open") {
                    var args = call.argument<String>("text")
                    print("message")
                    print(args)
                    if (args == null || args == "") {
                        args = "https://www.google.com/"
                    }
                    openBrowser(args)
                }
                if (call.method == "adbCommand") {
                    var args = call.argument<String>("text")
                    print("message")
                    Log.d("TAG", args.toString())
                    if (args == null || args == "") {
                        args = "reboot"
                    }
                    runShellCommand(args);
                }
                if (call.method == "getSharedText") {
                    result.success(sharedText)
                    sharedText = ""
                }
            }
    }

    @RequiresApi(Build.VERSION_CODES.M)
    private fun runShellCommand(command: String) {
        val process = Runtime.getRuntime().exec(command)
        Log.d("TAG", "runShellCommand: ")
        val pm = getSystemService(Context.POWER_SERVICE) as PowerManager
        pm.reboot(null)
        Log.d("TAG", process.toString())
        process.waitFor()
    }

    private fun handleSendText(intent: Intent) {
        sharedText = intent.getStringExtra(Intent.EXTRA_TEXT).toString()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (Intent.ACTION_SEND == intent?.action) {
            if ("text/plain" == intent?.type) {
                handleSendText(intent)
            }
        }
    }

    private fun openBrowser(url: String) {
        startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
    }
}