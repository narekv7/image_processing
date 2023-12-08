part of 'image_picker_bloc.dart';

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.init() = _Init;
  const factory ImagePickerState.inProcess() = _InProcess;
  const factory ImagePickerState.picked({
    required String path,
  }) = _Picked;
  const factory ImagePickerState.failed() = _Failed;
}
