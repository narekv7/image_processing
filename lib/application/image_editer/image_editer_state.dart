part of 'image_editer_bloc.dart';

@freezed
class ImageEditerState with _$ImageEditerState {
  const factory ImageEditerState.init() = _Init;
  const factory ImageEditerState.inProcess() = _InProcess;
  const factory ImageEditerState.done({
    required Uint8List unit8List,
  }) = _Done;
  const factory ImageEditerState.failed({
    required String errorMessage,
  }) = _Failed;
}
