import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_processing/domain/i_image_picker.dart';

part 'image_picker_bloc.freezed.dart';
part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final IImagePicker _imagePicker;

  ImagePickerBloc(
    this._imagePicker,
  ) : super(const ImagePickerState.init()) {
    on<_Pick>(_onPick);
  }

  Future<void> _onPick(
    _Pick event,
    Emitter<ImagePickerState> emit,
  ) async {
    emit(const ImagePickerState.inProcess());

    try {
      final pickedImagePath = await _imagePicker.pickImage();

      emit(
        ImagePickerState.picked(path: pickedImagePath),
      );
    } catch (_) {
      emit(const ImagePickerState.failed());
    }
  }
}
