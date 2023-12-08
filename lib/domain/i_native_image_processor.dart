import 'dart:typed_data';

abstract interface class INativeImageProcessor {
  Future<Uint8List> editImage(String path);
}
