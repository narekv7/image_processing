package com.example.image_processing

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.ByteArrayOutputStream
import java.io.File

import com.example.image_processing.ImageFilters

class ImageProcessor {
    companion object {
        fun edit(imagePath: String): ByteArray {
            // Creating [Bitmap] from image file 
            var bitmap: Bitmap = BitmapFactory.decodeFile(
                    File(imagePath).absolutePath,
                    BitmapFactory.Options()
                )

            // Applying filterss
            bitmap = ImageFilters.blur(bitmap, 5)
            

            // Convert Bitmap and return as BypeArray
            val outputStream = ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
            
            return outputStream.toByteArray()
        }
    }
}
