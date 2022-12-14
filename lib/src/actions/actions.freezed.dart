// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPhotos {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<UnsplashPhoto> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<UnsplashPhoto> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<UnsplashPhoto> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPhotosCopyWith<$Res> {
  factory $GetPhotosCopyWith(GetPhotos value, $Res Function(GetPhotos) then) = _$GetPhotosCopyWithImpl<$Res, GetPhotos>;
}

/// @nodoc
class _$GetPhotosCopyWithImpl<$Res, $Val extends GetPhotos> implements $GetPhotosCopyWith<$Res> {
  _$GetPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPhotosStartCopyWith<$Res> {
  factory _$$GetPhotosStartCopyWith(_$GetPhotosStart value, $Res Function(_$GetPhotosStart) then) =
      __$$GetPhotosStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPhotosStartCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosStart>
    implements _$$GetPhotosStartCopyWith<$Res> {
  __$$GetPhotosStartCopyWithImpl(_$GetPhotosStart _value, $Res Function(_$GetPhotosStart) _then) : super(_value, _then);
}

/// @nodoc

class _$GetPhotosStart implements GetPhotosStart {
  const _$GetPhotosStart();

  @override
  String toString() {
    return 'GetPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetPhotosStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<UnsplashPhoto> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<UnsplashPhoto> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<UnsplashPhoto> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotosStart implements GetPhotos {
  const factory GetPhotosStart() = _$GetPhotosStart;
}

/// @nodoc
abstract class _$$GetPhotosSuccessfulCopyWith<$Res> {
  factory _$$GetPhotosSuccessfulCopyWith(_$GetPhotosSuccessful value, $Res Function(_$GetPhotosSuccessful) then) =
      __$$GetPhotosSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnsplashPhoto> photos});
}

/// @nodoc
class __$$GetPhotosSuccessfulCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosSuccessful>
    implements _$$GetPhotosSuccessfulCopyWith<$Res> {
  __$$GetPhotosSuccessfulCopyWithImpl(_$GetPhotosSuccessful _value, $Res Function(_$GetPhotosSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$GetPhotosSuccessful(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UnsplashPhoto>,
    ));
  }
}

/// @nodoc

class _$GetPhotosSuccessful implements GetPhotosSuccessful {
  const _$GetPhotosSuccessful(final List<UnsplashPhoto> photos) : _photos = photos;

  final List<UnsplashPhoto> _photos;
  @override
  List<UnsplashPhoto> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'GetPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosSuccessful &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosSuccessfulCopyWith<_$GetPhotosSuccessful> get copyWith =>
      __$$GetPhotosSuccessfulCopyWithImpl<_$GetPhotosSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<UnsplashPhoto> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<UnsplashPhoto> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<UnsplashPhoto> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosSuccessful implements GetPhotos {
  const factory GetPhotosSuccessful(final List<UnsplashPhoto> photos) = _$GetPhotosSuccessful;

  List<UnsplashPhoto> get photos;
  @JsonKey(ignore: true)
  _$$GetPhotosSuccessfulCopyWith<_$GetPhotosSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPhotosErrorCopyWith<$Res> {
  factory _$$GetPhotosErrorCopyWith(_$GetPhotosError value, $Res Function(_$GetPhotosError) then) =
      __$$GetPhotosErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPhotosErrorCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosError>
    implements _$$GetPhotosErrorCopyWith<$Res> {
  __$$GetPhotosErrorCopyWithImpl(_$GetPhotosError _value, $Res Function(_$GetPhotosError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPhotosError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPhotosError implements GetPhotosError {
  const _$GetPhotosError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPhotos.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosErrorCopyWith<_$GetPhotosError> get copyWith =>
      __$$GetPhotosErrorCopyWithImpl<_$GetPhotosError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<UnsplashPhoto> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<UnsplashPhoto> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<UnsplashPhoto> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosError implements GetPhotos {
  const factory GetPhotosError(final Object error, final StackTrace stackTrace) = _$GetPhotosError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPhotosErrorCopyWith<_$GetPhotosError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetSelectedPhoto {
  UnsplashPhoto get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedPhotoCopyWith<SetSelectedPhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhotoCopyWith(SetSelectedPhoto value, $Res Function(SetSelectedPhoto) then) =
      _$SetSelectedPhotoCopyWithImpl<$Res, SetSelectedPhoto>;
  @useResult
  $Res call({UnsplashPhoto photo});

  $UnsplashPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$SetSelectedPhotoCopyWithImpl<$Res, $Val extends SetSelectedPhoto> implements $SetSelectedPhotoCopyWith<$Res> {
  _$SetSelectedPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UnsplashPhoto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashPhotoCopyWith<$Res> get photo {
    return $UnsplashPhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedPhoto$CopyWith<$Res> implements $SetSelectedPhotoCopyWith<$Res> {
  factory _$$SetSelectedPhoto$CopyWith(_$SetSelectedPhoto$ value, $Res Function(_$SetSelectedPhoto$) then) =
      __$$SetSelectedPhoto$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnsplashPhoto photo});

  @override
  $UnsplashPhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$SetSelectedPhoto$CopyWithImpl<$Res> extends _$SetSelectedPhotoCopyWithImpl<$Res, _$SetSelectedPhoto$>
    implements _$$SetSelectedPhoto$CopyWith<$Res> {
  __$$SetSelectedPhoto$CopyWithImpl(_$SetSelectedPhoto$ _value, $Res Function(_$SetSelectedPhoto$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$SetSelectedPhoto$(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UnsplashPhoto,
    ));
  }
}

/// @nodoc

class _$SetSelectedPhoto$ implements SetSelectedPhoto$ {
  const _$SetSelectedPhoto$(this.photo);

  @override
  final UnsplashPhoto photo;

  @override
  String toString() {
    return 'SetSelectedPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedPhoto$ &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedPhoto$CopyWith<_$SetSelectedPhoto$> get copyWith =>
      __$$SetSelectedPhoto$CopyWithImpl<_$SetSelectedPhoto$>(this, _$identity);
}

abstract class SetSelectedPhoto$ implements SetSelectedPhoto {
  const factory SetSelectedPhoto$(final UnsplashPhoto photo) = _$SetSelectedPhoto$;

  @override
  UnsplashPhoto get photo;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedPhoto$CopyWith<_$SetSelectedPhoto$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToggleSearch {}

/// @nodoc
abstract class $ToggleSearchCopyWith<$Res> {
  factory $ToggleSearchCopyWith(ToggleSearch value, $Res Function(ToggleSearch) then) =
      _$ToggleSearchCopyWithImpl<$Res, ToggleSearch>;
}

/// @nodoc
class _$ToggleSearchCopyWithImpl<$Res, $Val extends ToggleSearch> implements $ToggleSearchCopyWith<$Res> {
  _$ToggleSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleSearch$CopyWith<$Res> {
  factory _$$ToggleSearch$CopyWith(_$ToggleSearch$ value, $Res Function(_$ToggleSearch$) then) =
      __$$ToggleSearch$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleSearch$CopyWithImpl<$Res> extends _$ToggleSearchCopyWithImpl<$Res, _$ToggleSearch$>
    implements _$$ToggleSearch$CopyWith<$Res> {
  __$$ToggleSearch$CopyWithImpl(_$ToggleSearch$ _value, $Res Function(_$ToggleSearch$) _then) : super(_value, _then);
}

/// @nodoc

class _$ToggleSearch$ implements ToggleSearch$ {
  const _$ToggleSearch$();

  @override
  String toString() {
    return 'ToggleSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ToggleSearch$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ToggleSearch$ implements ToggleSearch {
  const factory ToggleSearch$() = _$ToggleSearch$;
}

/// @nodoc
mixin _$UpdateLike {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, bool like) $default, {
    required TResult Function(int id, bool like) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, bool like)? $default, {
    TResult? Function(int id, bool like)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, bool like)? $default, {
    TResult Function(int id, bool like)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateLikeStart value) $default, {
    required TResult Function(UpdateLikeSuccessful value) successful,
    required TResult Function(UpdateLikeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateLikeStart value)? $default, {
    TResult? Function(UpdateLikeSuccessful value)? successful,
    TResult? Function(UpdateLikeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateLikeStart value)? $default, {
    TResult Function(UpdateLikeSuccessful value)? successful,
    TResult Function(UpdateLikeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateLikeCopyWith<$Res> {
  factory $UpdateLikeCopyWith(UpdateLike value, $Res Function(UpdateLike) then) =
      _$UpdateLikeCopyWithImpl<$Res, UpdateLike>;
}

/// @nodoc
class _$UpdateLikeCopyWithImpl<$Res, $Val extends UpdateLike> implements $UpdateLikeCopyWith<$Res> {
  _$UpdateLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateLikeStartCopyWith<$Res> {
  factory _$$UpdateLikeStartCopyWith(_$UpdateLikeStart value, $Res Function(_$UpdateLikeStart) then) =
      __$$UpdateLikeStartCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool like});
}

/// @nodoc
class __$$UpdateLikeStartCopyWithImpl<$Res> extends _$UpdateLikeCopyWithImpl<$Res, _$UpdateLikeStart>
    implements _$$UpdateLikeStartCopyWith<$Res> {
  __$$UpdateLikeStartCopyWithImpl(_$UpdateLikeStart _value, $Res Function(_$UpdateLikeStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? like = null,
  }) {
    return _then(_$UpdateLikeStart(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateLikeStart implements UpdateLikeStart {
  const _$UpdateLikeStart(this.id, {required this.like});

  @override
  final int id;
  @override
  final bool like;

  @override
  String toString() {
    return 'UpdateLike(id: $id, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLikeStart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.like, like) || other.like == like));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, like);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLikeStartCopyWith<_$UpdateLikeStart> get copyWith =>
      __$$UpdateLikeStartCopyWithImpl<_$UpdateLikeStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, bool like) $default, {
    required TResult Function(int id, bool like) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(id, like);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, bool like)? $default, {
    TResult? Function(int id, bool like)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(id, like);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, bool like)? $default, {
    TResult Function(int id, bool like)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, like);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateLikeStart value) $default, {
    required TResult Function(UpdateLikeSuccessful value) successful,
    required TResult Function(UpdateLikeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateLikeStart value)? $default, {
    TResult? Function(UpdateLikeSuccessful value)? successful,
    TResult? Function(UpdateLikeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateLikeStart value)? $default, {
    TResult Function(UpdateLikeSuccessful value)? successful,
    TResult Function(UpdateLikeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateLikeStart implements UpdateLike {
  const factory UpdateLikeStart(final int id, {required final bool like}) = _$UpdateLikeStart;

  int get id;
  bool get like;
  @JsonKey(ignore: true)
  _$$UpdateLikeStartCopyWith<_$UpdateLikeStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLikeSuccessfulCopyWith<$Res> {
  factory _$$UpdateLikeSuccessfulCopyWith(_$UpdateLikeSuccessful value, $Res Function(_$UpdateLikeSuccessful) then) =
      __$$UpdateLikeSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool like});
}

/// @nodoc
class __$$UpdateLikeSuccessfulCopyWithImpl<$Res> extends _$UpdateLikeCopyWithImpl<$Res, _$UpdateLikeSuccessful>
    implements _$$UpdateLikeSuccessfulCopyWith<$Res> {
  __$$UpdateLikeSuccessfulCopyWithImpl(_$UpdateLikeSuccessful _value, $Res Function(_$UpdateLikeSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? like = null,
  }) {
    return _then(_$UpdateLikeSuccessful(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateLikeSuccessful implements UpdateLikeSuccessful {
  const _$UpdateLikeSuccessful(this.id, {required this.like});

  @override
  final int id;
  @override
  final bool like;

  @override
  String toString() {
    return 'UpdateLike.successful(id: $id, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLikeSuccessful &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.like, like) || other.like == like));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, like);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLikeSuccessfulCopyWith<_$UpdateLikeSuccessful> get copyWith =>
      __$$UpdateLikeSuccessfulCopyWithImpl<_$UpdateLikeSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, bool like) $default, {
    required TResult Function(int id, bool like) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(id, like);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, bool like)? $default, {
    TResult? Function(int id, bool like)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(id, like);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, bool like)? $default, {
    TResult Function(int id, bool like)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(id, like);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateLikeStart value) $default, {
    required TResult Function(UpdateLikeSuccessful value) successful,
    required TResult Function(UpdateLikeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateLikeStart value)? $default, {
    TResult? Function(UpdateLikeSuccessful value)? successful,
    TResult? Function(UpdateLikeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateLikeStart value)? $default, {
    TResult Function(UpdateLikeSuccessful value)? successful,
    TResult Function(UpdateLikeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateLikeSuccessful implements UpdateLike {
  const factory UpdateLikeSuccessful(final int id, {required final bool like}) = _$UpdateLikeSuccessful;

  int get id;
  bool get like;
  @JsonKey(ignore: true)
  _$$UpdateLikeSuccessfulCopyWith<_$UpdateLikeSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLikeErrorCopyWith<$Res> {
  factory _$$UpdateLikeErrorCopyWith(_$UpdateLikeError value, $Res Function(_$UpdateLikeError) then) =
      __$$UpdateLikeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateLikeErrorCopyWithImpl<$Res> extends _$UpdateLikeCopyWithImpl<$Res, _$UpdateLikeError>
    implements _$$UpdateLikeErrorCopyWith<$Res> {
  __$$UpdateLikeErrorCopyWithImpl(_$UpdateLikeError _value, $Res Function(_$UpdateLikeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateLikeError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateLikeError implements UpdateLikeError {
  const _$UpdateLikeError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateLike.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLikeError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLikeErrorCopyWith<_$UpdateLikeError> get copyWith =>
      __$$UpdateLikeErrorCopyWithImpl<_$UpdateLikeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, bool like) $default, {
    required TResult Function(int id, bool like) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, bool like)? $default, {
    TResult? Function(int id, bool like)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, bool like)? $default, {
    TResult Function(int id, bool like)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateLikeStart value) $default, {
    required TResult Function(UpdateLikeSuccessful value) successful,
    required TResult Function(UpdateLikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateLikeStart value)? $default, {
    TResult? Function(UpdateLikeSuccessful value)? successful,
    TResult? Function(UpdateLikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateLikeStart value)? $default, {
    TResult Function(UpdateLikeSuccessful value)? successful,
    TResult Function(UpdateLikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateLikeError implements UpdateLike {
  const factory UpdateLikeError(final Object error, final StackTrace stackTrace) = _$UpdateLikeError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateLikeErrorCopyWith<_$UpdateLikeError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitQuery {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitQueryCopyWith<SubmitQuery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitQueryCopyWith<$Res> {
  factory $SubmitQueryCopyWith(SubmitQuery value, $Res Function(SubmitQuery) then) =
      _$SubmitQueryCopyWithImpl<$Res, SubmitQuery>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SubmitQueryCopyWithImpl<$Res, $Val extends SubmitQuery> implements $SubmitQueryCopyWith<$Res> {
  _$SubmitQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitQuery$CopyWith<$Res> implements $SubmitQueryCopyWith<$Res> {
  factory _$$SubmitQuery$CopyWith(_$SubmitQuery$ value, $Res Function(_$SubmitQuery$) then) =
      __$$SubmitQuery$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SubmitQuery$CopyWithImpl<$Res> extends _$SubmitQueryCopyWithImpl<$Res, _$SubmitQuery$>
    implements _$$SubmitQuery$CopyWith<$Res> {
  __$$SubmitQuery$CopyWithImpl(_$SubmitQuery$ _value, $Res Function(_$SubmitQuery$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SubmitQuery$(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitQuery$ implements SubmitQuery$ {
  const _$SubmitQuery$({this.query = 'travel'});

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'SubmitQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitQuery$ &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitQuery$CopyWith<_$SubmitQuery$> get copyWith =>
      __$$SubmitQuery$CopyWithImpl<_$SubmitQuery$>(this, _$identity);
}

abstract class SubmitQuery$ implements SubmitQuery {
  const factory SubmitQuery$({final String query}) = _$SubmitQuery$;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SubmitQuery$CopyWith<_$SubmitQuery$> get copyWith => throw _privateConstructorUsedError;
}
