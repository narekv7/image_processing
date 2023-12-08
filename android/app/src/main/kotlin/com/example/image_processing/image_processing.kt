package com.example.image_processing

import android.graphics.BitmapFactory
import java.io.ByteArrayOutputStream
import java.io.File
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix

class ImageProcessor {
    companion object {
        fun u8(imagePath: String): ByteArray {

            val file = File(imagePath)
            val options = BitmapFactory.Options()
            val bitmap: Bitmap = BitmapFactory.decodeFile(file.absolutePath, options)
            val bitmapBlured = mirrorBitmapVertically(bitmap)

            // Convert the Bitmap to a byte array
            val outputStream = ByteArrayOutputStream()
            bitmapBlured.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
            return outputStream.toByteArray()
        }

        private fun mirrorBitmapVertically(originalBitmap: Bitmap): Bitmap {
            val matrix = Matrix()
            matrix.preScale(-1f, 1f) // Mirror vertically

            // Create a new bitmap by applying the matrix transformation
            val mirroredBitmap = Bitmap.createBitmap(
                originalBitmap,
                0, 0, originalBitmap.width, originalBitmap.height,
                matrix, true
            )

            return mirroredBitmap
        }
    }
}