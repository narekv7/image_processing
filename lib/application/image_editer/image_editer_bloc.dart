import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_processing/application/image_picker/image_picker_bloc.dart';
import 'package:image_processing/domain/i_native_image_processor.dart';

part 'image_editer_bloc.freezed.dart';
part 'image_editer_state.dart';
part 'image_editer_event.dart';

class ImageEditerBloc extends Bloc<ImageEditerEvent, ImageEditerState> {
  final ImagePickerBloc _imagePickerBloc;
  final INativeImageProcessor _imageProcessor;

  ImageEditerBloc(
    this._imagePickerBloc,
    this._imageProcessor,
  ) : super(const ImageEditerState.init()) {
    on<_Edit>(_onEdit);
  }

  Future<void> _onEdit(
    _Edit event,
    Emitter<ImageEditerState> emit,
  ) async {
    emit(const ImageEditerState.inProcess());

    final pickedImagePath = _imagePickerBloc.state.mapOrNull<String?>(
      picked: (pickedState) => pickedState.path,
    );

    if (pickedImagePath == null) {
      return emit(
        const ImageEditerState.failed(errorMessage: "Please pick image"),
      );
    }

    try {
      final result = await _imageProcessor.editImage(
        pickedImagePath,
        isBlur: isBlur,
        isMirrorHorizontal: isMirrorHorizontal,
        isMirrorVertical: isMirrorVertical,
      );

      emit(ImageEditerState.done(unit8List: result));
    } catch (_) {
      emit(
        const ImageEditerState.failed(
          errorMessage: "Oops... Something went wrong",
        ),
      );
    }
  }

  // TODO: seperate bloc
  bool isBlur = false;
  bool isMirrorVertical = false;
  bool isMirrorHorizontal = false;
}
