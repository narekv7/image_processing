// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_editer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageEditerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProcess,
    required TResult Function(Uint8List unit8List) done,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProcess,
    TResult? Function(Uint8List unit8List)? done,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProcess,
    TResult Function(Uint8List unit8List)? done,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Done value) done,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Done value)? done,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Done value)? done,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEditerStateCopyWith<$Res> {
  factory $ImageEditerStateCopyWith(
          ImageEditerState value, $Res Function(ImageEditerState) then) =
      _$ImageEditerStateCopyWithImpl<$Res, ImageEditerState>;
}

/// @nodoc
class _$ImageEditerStateCopyWithImpl<$Res, $Val extends ImageEditerState>
    implements $ImageEditerStateCopyWith<$Res> {
  _$ImageEditerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ImageEditerStateCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ImageEditerState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProcess,
    required TResult Function(Uint8List unit8List) done,
    required TResult Function(String errorMessage) failed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProcess,
    TResult? Function(Uint8List unit8List)? done,
    TResult? Function(String errorMessage)? failed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProcess,
    TResult Function(Uint8List unit8List)? done,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Done value) done,
    required TResult Function(_Failed value) failed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Done value)? done,
    TResult? Function(_Failed value)? failed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Done value)? done,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ImageEditerState {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$InProcessImplCopyWith<$Res> {
  factory _$$InProcessImplCopyWith(
          _$InProcessImpl value, $Res Function(_$InProcessImpl) then) =
      __$$InProcessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProcessImplCopyWithImpl<$Res>
    extends _$ImageEditerStateCopyWithImpl<$Res, _$InProcessImpl>
    implements _$$InProcessImplCopyWith<$Res> {
  __$$InProcessImplCopyWithImpl(
      _$InProcessImpl _value, $Res Function(_$InProcessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProcessImpl implements _InProcess {
  const _$InProcessImpl();

  @override
  String toString() {
    return 'ImageEditerState.inProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProcessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProcess,
    required TResult Function(Uint8List unit8List) done,
    required TResult Function(String errorMessage) failed,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProcess,
    TResult? Function(Uint8List unit8List)? done,
    TResult? Function(String errorMessage)? failed,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProcess,
    TResult Function(Uint8List unit8List)? done,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Done value) done,
    required TResult Function(_Failed value) failed,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Done value)? done,
    TResult? Function(_Failed value)? failed,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Done value)? done,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcess implements ImageEditerState {
  const factory _InProcess() = _$InProcessImpl;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List unit8List});
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$ImageEditerStateCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit8List = freezed,
  }) {
    return _then(_$DoneImpl(
      unit8List: freezed == unit8List
          ? _value.unit8List
          : unit8List // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DoneImpl implements _Done {
  const _$DoneImpl({required this.unit8List});

  @override
  final Uint8List unit8List;

  @override
  String toString() {
    return 'ImageEditerState.done(unit8List: $unit8List)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneImpl &&
            const DeepCollectionEquality().equals(other.unit8List, unit8List));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unit8List));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      __$$DoneImplCopyWithImpl<_$DoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProcess,
    required TResult Function(Uint8List unit8List) done,
    required TResult Function(String errorMessage) failed,
  }) {
    return done(unit8List);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProcess,
    TResult? Function(Uint8List unit8List)? done,
    TResult? Function(String errorMessage)? failed,
  }) {
    return done?.call(unit8List);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProcess,
    TResult Function(Uint8List unit8List)? done,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(unit8List);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Done value) done,
    required TResult Function(_Failed value) failed,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Done value)? done,
    TResult? Function(_Failed value)? failed,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Done value)? done,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements ImageEditerState {
  const factory _Done({required final Uint8List unit8List}) = _$DoneImpl;

  Uint8List get unit8List;
  @JsonKey(ignore: true)
  _$$DoneImplCopyWith<_$DoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ImageEditerStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ImageEditerState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inProcess,
    required TResult Function(Uint8List unit8List) done,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inProcess,
    TResult? Function(Uint8List unit8List)? done,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inProcess,
    TResult Function(Uint8List unit8List)? done,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_Done value) done,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_Done value)? done,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_Done value)? done,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ImageEditerState {
  const factory _Failed({required final String errorMessage}) = _$FailedImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageEditerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Edit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Edit value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEditerEventCopyWith<$Res> {
  factory $ImageEditerEventCopyWith(
          ImageEditerEvent value, $Res Function(ImageEditerEvent) then) =
      _$ImageEditerEventCopyWithImpl<$Res, ImageEditerEvent>;
}

/// @nodoc
class _$ImageEditerEventCopyWithImpl<$Res, $Val extends ImageEditerEvent>
    implements $ImageEditerEventCopyWith<$Res> {
  _$ImageEditerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$ImageEditerEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl();

  @override
  String toString() {
    return 'ImageEditerEvent.edit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() edit,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? edit,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Edit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Edit value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements ImageEditerEvent {
  const factory _Edit() = _$EditImpl;
}
