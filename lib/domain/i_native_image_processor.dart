import 'dart:typed_data';

abstract interface class INativeImageProcessor {
  Future<Uint8List> editImage(
    String path, {
    bool isBlur = false,
    bool isMirrorVertical = false,
    bool isMirrorHorizontal = false,
  });
}
