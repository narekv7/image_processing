part of 'image_editer_bloc.dart';

@freezed
class ImageEditerEvent with _$ImageEditerEvent {
  const factory ImageEditerEvent.edit() = _Edit;
}
