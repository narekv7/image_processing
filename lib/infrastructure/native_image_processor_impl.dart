import 'package:flutter/services.dart';
import 'package:image_processing/domain/i_native_image_processor.dart';

class NativeImageProcessorImpl implements INativeImageProcessor {
  static const _channel = MethodChannel('image_processing');

  @override
  Future<Uint8List> editImage(String path) async {
    final Uint8List result = await _channel.invokeMethod(
      'edit_image',
      {'imagePath': path},
    );

    return result;
  }
}
