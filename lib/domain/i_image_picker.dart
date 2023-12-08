abstract interface class IImagePicker {
  // Should return path of picked image
  Future<String> pickImage();
}
