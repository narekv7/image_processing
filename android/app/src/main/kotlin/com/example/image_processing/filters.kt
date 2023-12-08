// package com.example.image_processing

// import android.graphics.Bitmap
// import android.graphics.Matrix

// class ImageFilters {
//     companion object{
//         fun mirror(originalBitmap: Bitmap): Bitmap {
//             val matrix = Matrix().apply { preScale(-1f, 1f) }

//             val mirroredBitmap =
//                     Bitmap.createBitmap(
//                             originalBitmap,
//                             0,
//                             0,
//                             originalBitmap.width,
//                             originalBitmap.height,
//                             matrix,
//                             true
//                     )

//             return mirroredBitmap
//         }
//     }
// }

package com.example.image_processing

import android.graphics.Bitmap
import android.graphics.Matrix

class ImageFilters {
    companion object {
        fun mirror(originalBitmap: Bitmap): Bitmap {
            val matrix = Matrix().apply { preScale(-1f, 1f) }

            val mirroredBitmap =
                Bitmap.createBitmap(
                    originalBitmap,
                    0,
                    0,
                    originalBitmap.width,
                    originalBitmap.height,
                    matrix,
                    true
                )

            return mirroredBitmap
        }

        fun blur(originalBitmap: Bitmap, blurFactor: int): Bitmap {
            val blurredBitmap = originalBitmap.copy(originalBitmap.config, true)

            for(f in 0..blurFactor){
                for (y in 1 until originalBitmap.height - 1) {
                    for (x in 1 until originalBitmap.width - 1) {
                        val pixel = getBlurredPixel(originalBitmap, x, y)
                        blurredBitmap.setPixel(x, y, pixel)
                    }
                }
            }

            

            return blurredBitmap
        }

        private fun getBlurredPixel(bitmap: Bitmap, x: Int, y: Int): Int {
            var red = 0
            var green = 0
            var blue = 0

            for (dy in -1..1) {
                for (dx in -1..1) {
                    val nx = x + dx
                    val ny = y + dy

                    val pixel = bitmap.getPixel(nx, ny)
                    red += (pixel shr 16 and 0xFF)
                    green += (pixel shr 8 and 0xFF)
                    blue += (pixel and 0xFF)
                }
            }

            red /= 9
            green /= 9
            blue /= 9

            return (0xFF shl 24) or (red shl 16) or (green shl 8) or blue
        }
    }
}
