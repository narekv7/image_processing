package com.example.image_processing

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.ByteArrayOutputStream
import java.io.File

import com.example.image_processing.ImageFilters

class ImageProcessor {
    companion object {
        fun edit(imagePath: String, blur: Boolean, mh: Boolean, mv: Boolean): ByteArray {
            // Creating [Bitmap] from image file 
            var bitmap: Bitmap = BitmapFactory.decodeFile(
                    File(imagePath).absolutePath,
                    BitmapFactory.Options()
                )

            // Applying filterss
            if (blur) {
                // TODO: take radius from UI
                bitmap = ImageFilters.blur(bitmap, 20)
            }
            if (mh) {
                bitmap = ImageFilters.mirror(bitmap, true)
            }
            if (mv) {
                bitmap = ImageFilters.mirror(bitmap, false)
            }
            

            // Convert Bitmap and return as BypeArray
            val outputStream = ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
            
            return outputStream.toByteArray()
        }
    }
}
