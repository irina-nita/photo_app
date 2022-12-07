// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unsplash_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnsplashPhoto _$UnsplashPhotoFromJson(Map<String, dynamic> json) {
  return UnsplashPhoto$.fromJson(json);
}

/// @nodoc
mixin _$UnsplashPhoto {
  String get description => throw _privateConstructorUsedError;
  Map<String, String> get urls => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashPhotoCopyWith<UnsplashPhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashPhotoCopyWith<$Res> {
  factory $UnsplashPhotoCopyWith(UnsplashPhoto value, $Res Function(UnsplashPhoto) then) =
      _$UnsplashPhotoCopyWithImpl<$Res, UnsplashPhoto>;
  @useResult
  $Res call({String description, Map<String, String> urls, int likes, Map<String, dynamic> user});
}

/// @nodoc
class _$UnsplashPhotoCopyWithImpl<$Res, $Val extends UnsplashPhoto> implements $UnsplashPhotoCopyWith<$Res> {
  _$UnsplashPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? urls = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsplashPhoto$CopyWith<$Res> implements $UnsplashPhotoCopyWith<$Res> {
  factory _$$UnsplashPhoto$CopyWith(_$UnsplashPhoto$ value, $Res Function(_$UnsplashPhoto$) then) =
      __$$UnsplashPhoto$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, Map<String, String> urls, int likes, Map<String, dynamic> user});
}

/// @nodoc
class __$$UnsplashPhoto$CopyWithImpl<$Res> extends _$UnsplashPhotoCopyWithImpl<$Res, _$UnsplashPhoto$>
    implements _$$UnsplashPhoto$CopyWith<$Res> {
  __$$UnsplashPhoto$CopyWithImpl(_$UnsplashPhoto$ _value, $Res Function(_$UnsplashPhoto$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? urls = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_$UnsplashPhoto$(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsplashPhoto$ extends UnsplashPhoto$ {
  const _$UnsplashPhoto$(
      {this.description = 'No description.',
      required final Map<String, String> urls,
      required this.likes,
      required final Map<String, dynamic> user})
      : _urls = urls,
        _user = user,
        super._();

  factory _$UnsplashPhoto$.fromJson(Map<String, dynamic> json) => _$$UnsplashPhoto$FromJson(json);

  @override
  @JsonKey()
  final String description;
  final Map<String, String> _urls;
  @override
  Map<String, String> get urls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_urls);
  }

  @override
  final int likes;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString() {
    return 'UnsplashPhoto(description: $description, urls: $urls, likes: $likes, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashPhoto$ &&
            (identical(other.description, description) || other.description == description) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, const DeepCollectionEquality().hash(_urls), likes,
      const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashPhoto$CopyWith<_$UnsplashPhoto$> get copyWith =>
      __$$UnsplashPhoto$CopyWithImpl<_$UnsplashPhoto$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashPhoto$ToJson(
      this,
    );
  }
}

abstract class UnsplashPhoto$ extends UnsplashPhoto {
  const factory UnsplashPhoto$(
      {final String description,
      required final Map<String, String> urls,
      required final int likes,
      required final Map<String, dynamic> user}) = _$UnsplashPhoto$;
  const UnsplashPhoto$._() : super._();

  factory UnsplashPhoto$.fromJson(Map<String, dynamic> json) = _$UnsplashPhoto$.fromJson;

  @override
  String get description;
  @override
  Map<String, String> get urls;
  @override
  int get likes;
  @override
  Map<String, dynamic> get user;
  @override
  @JsonKey(ignore: true)
  _$$UnsplashPhoto$CopyWith<_$UnsplashPhoto$> get copyWith => throw _privateConstructorUsedError;
}
