import 'package:image_picker/image_picker.dart';

import 'package:image_processing/domain/i_image_picker.dart';

class ImagePickerImpl implements IImagePicker {
  final ImagePicker _picker = ImagePicker();

  @override
  Future<String> pickImage() async {
    final result = await _picker.pickImage(source: ImageSource.gallery);

    if (result == null) {
      throw Exception('Pick image failed');
    }

    return result.path;
  }
}
