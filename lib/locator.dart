import 'package:image_processing/application/image_editer/image_editer_bloc.dart';
import 'package:image_processing/application/image_picker/image_picker_bloc.dart';
import 'package:image_processing/domain/i_image_picker.dart';
import 'package:image_processing/domain/i_native_image_processor.dart';
import 'package:image_processing/infrastructure/image_picker_impl.dart';
import 'package:image_processing/infrastructure/native_image_processor_impl.dart';

abstract final class Locator {
  static final IImagePicker _imagePicker = ImagePickerImpl();

  static final INativeImageProcessor _imageProcessor =
      NativeImageProcessorImpl();

  static final ImagePickerBloc imagePickerBloc = ImagePickerBloc(_imagePicker);

  static final ImageEditerBloc imageEditerBloc = ImageEditerBloc(
    imagePickerBloc,
    _imageProcessor,
  );
}
