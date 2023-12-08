package com.example.image_processing

import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.Color

class ImageFilters {
    companion object {
        fun mirror(originalBitmap: Bitmap, isHorizontal: Boolean): Bitmap {
            val matrix = Matrix().apply { if(isHorizontal) preScale(-1f, 1f) else  preScale(1f, -1f)}

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

        fun blur(sourceBitmap: Bitmap, radius: Int): Bitmap {
            val inputBitmap = sourceBitmap.copy(sourceBitmap.config, true)
            val pixels = IntArray(inputBitmap.width * inputBitmap.height)

            inputBitmap.getPixels(pixels, 0, inputBitmap.width, 0, 0, inputBitmap.width, inputBitmap.height)

            val blurredPixels = applyGaussianBlur(pixels, inputBitmap.width, inputBitmap.height, radius)

            val outputBitmap = Bitmap.createBitmap(inputBitmap.width, inputBitmap.height, inputBitmap.config)
            outputBitmap.setPixels(blurredPixels, 0, inputBitmap.width, 0, 0, inputBitmap.width, inputBitmap.height)

            return outputBitmap
        }

        private fun applyGaussianBlur(pixels: IntArray, width: Int, height: Int, radius: Int): IntArray {
            val weights = calculateGaussianWeights(radius)

            val resultPixels = IntArray(pixels.size)

            for (y in 0 until height) {
                for (x in 0 until width) {
                    var red = 0.0
                    var green = 0.0
                    var blue = 0.0
                    var alpha = 0.0

                    for (i in -radius..radius) {
                        val offsetX = x + i
                        if (offsetX in 0 until width) {
                            val pixel = pixels[y * width + offsetX]
                            val weight = weights[i + radius]

                            alpha += Color.alpha(pixel) * weight
                            red += Color.red(pixel) * weight
                            green += Color.green(pixel) * weight
                            blue += Color.blue(pixel) * weight
                        }
                    }

                    resultPixels[y * width + x] = Color.argb(
                        alpha.toInt(),
                        red.toInt(),
                        green.toInt(),
                        blue.toInt()
                    )
                }
            }

            return resultPixels
        }


        private fun calculateGaussianWeights(radius: Int): DoubleArray {
            val weights = DoubleArray(2 * radius + 1)
            val sigma = radius / 3.0

            var sum = 0.0
            for (i in -radius..radius) {
                weights[i + radius] = Math.exp(-(i * i).toDouble() / (2.0 * sigma * sigma))
                sum += weights[i + radius]
            }

            for (i in 0 until weights.size) {
                weights[i] /= sum
            }

            return weights
        }
    }   
}