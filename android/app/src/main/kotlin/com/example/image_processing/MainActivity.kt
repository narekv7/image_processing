package com.example.image_processing

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

import com.example.image_processing.ImageProcessor

class MainActivity : FlutterActivity() {
    private val CHANNEL = "image_processing"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call,
                result ->
            if (call.method == "edit_image") {
                val imagePath = call.argument<String>("imagePath")
                if (imagePath == null) {
                    result.error(
                            "INVALID_ARGUMENT",
                            "Missing or invalid 'imagePath' parameter",
                            null
                    )
                    return@setMethodCallHandler
                }
                val res = ImageProcessor.u8(imagePath)
                result.success(res)
            } else {
                result.notImplemented()
            }
        }
    }
}
