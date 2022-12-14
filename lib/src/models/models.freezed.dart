// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

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
  int get id => throw _privateConstructorUsedError;
  Url get urls => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashPhotoCopyWith<UnsplashPhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashPhotoCopyWith<$Res> {
  factory $UnsplashPhotoCopyWith(UnsplashPhoto value, $Res Function(UnsplashPhoto) then) =
      _$UnsplashPhotoCopyWithImpl<$Res, UnsplashPhoto>;
  @useResult
  $Res call({String description, int id, Url urls, int likes, User user});

  $UrlCopyWith<$Res> get urls;
  $UserCopyWith<$Res> get user;
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
    Object? id = null,
    Object? urls = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Url,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlCopyWith<$Res> get urls {
    return $UrlCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsplashPhoto$CopyWith<$Res> implements $UnsplashPhotoCopyWith<$Res> {
  factory _$$UnsplashPhoto$CopyWith(_$UnsplashPhoto$ value, $Res Function(_$UnsplashPhoto$) then) =
      __$$UnsplashPhoto$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, int id, Url urls, int likes, User user});

  @override
  $UrlCopyWith<$Res> get urls;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UnsplashPhoto$CopyWithImpl<$Res> extends _$UnsplashPhotoCopyWithImpl<$Res, _$UnsplashPhoto$>
    implements _$$UnsplashPhoto$CopyWith<$Res> {
  __$$UnsplashPhoto$CopyWithImpl(_$UnsplashPhoto$ _value, $Res Function(_$UnsplashPhoto$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? id = null,
    Object? urls = null,
    Object? likes = null,
    Object? user = null,
  }) {
    return _then(_$UnsplashPhoto$(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Url,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsplashPhoto$ extends UnsplashPhoto$ {
  const _$UnsplashPhoto$(
      {this.description = 'No description.',
      required this.id,
      required this.urls,
      required this.likes,
      required this.user})
      : super._();

  factory _$UnsplashPhoto$.fromJson(Map<String, dynamic> json) => _$$UnsplashPhoto$FromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  final int id;
  @override
  final Url urls;
  @override
  final int likes;
  @override
  final User user;

  @override
  String toString() {
    return 'UnsplashPhoto(description: $description, id: $id, urls: $urls, likes: $likes, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashPhoto$ &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, id, urls, likes, user);

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
      required final int id,
      required final Url urls,
      required final int likes,
      required final User user}) = _$UnsplashPhoto$;
  const UnsplashPhoto$._() : super._();

  factory UnsplashPhoto$.fromJson(Map<String, dynamic> json) = _$UnsplashPhoto$.fromJson;

  @override
  String get description;
  @override
  int get id;
  @override
  Url get urls;
  @override
  int get likes;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UnsplashPhoto$CopyWith<_$UnsplashPhoto$> get copyWith => throw _privateConstructorUsedError;
}

Url _$UrlFromJson(Map<String, dynamic> json) {
  return Url$.fromJson(json);
}

/// @nodoc
mixin _$Url {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) = _$UrlCopyWithImpl<$Res, Url>;
  @useResult
  $Res call({String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res, $Val extends Url> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Url$CopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$$Url$CopyWith(_$Url$ value, $Res Function(_$Url$) then) = __$$Url$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class __$$Url$CopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res, _$Url$> implements _$$Url$CopyWith<$Res> {
  __$$Url$CopyWithImpl(_$Url$ _value, $Res Function(_$Url$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_$Url$(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Url$ implements Url$ {
  const _$Url$(
      {required this.raw, required this.full, required this.regular, required this.small, required this.thumb});

  factory _$Url$.fromJson(Map<String, dynamic> json) => _$$Url$FromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  @override
  String toString() {
    return 'Url(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Url$ &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, raw, full, regular, small, thumb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Url$CopyWith<_$Url$> get copyWith => __$$Url$CopyWithImpl<_$Url$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Url$ToJson(
      this,
    );
  }
}

abstract class Url$ implements Url {
  const factory Url$(
      {required final String raw,
      required final String full,
      required final String regular,
      required final String small,
      required final String thumb}) = _$Url$;

  factory Url$.fromJson(Map<String, dynamic> json) = _$Url$.fromJson;

  @override
  String get raw;
  @override
  String get full;
  @override
  String get regular;
  @override
  String get small;
  @override
  String get thumb;
  @override
  @JsonKey(ignore: true)
  _$$Url$CopyWith<_$Url$> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  dynamic get likes => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  ProfileImage get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({dynamic likes, String username, String name, @JsonKey(name: 'profile_image') ProfileImage profileImage});

  $ProfileImageCopyWith<$Res> get profileImage;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? username = null,
    Object? name = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileImageCopyWith<$Res> get profileImage {
    return $ProfileImageCopyWith<$Res>(_value.profileImage, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$User$CopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$CopyWith(_$User$ value, $Res Function(_$User$) then) = __$$User$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic likes, String username, String name, @JsonKey(name: 'profile_image') ProfileImage profileImage});

  @override
  $ProfileImageCopyWith<$Res> get profileImage;
}

/// @nodoc
class __$$User$CopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$User$> implements _$$User$CopyWith<$Res> {
  __$$User$CopyWithImpl(_$User$ _value, $Res Function(_$User$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = null,
    Object? username = null,
    Object? name = null,
    Object? profileImage = null,
  }) {
    return _then(_$User$(
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$ implements User$ {
  const _$User$(
      {required this.likes,
      required this.username,
      required this.name,
      @JsonKey(name: 'profile_image') required this.profileImage});

  factory _$User$.fromJson(Map<String, dynamic> json) => _$$User$FromJson(json);

  @override
  final dynamic likes;
  @override
  final String username;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_image')
  final ProfileImage profileImage;

  @override
  String toString() {
    return 'User(likes: $likes, username: $username, name: $name, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$ &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) || other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(likes), username, name, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$CopyWith<_$User$> get copyWith => __$$User$CopyWithImpl<_$User$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
      {required final dynamic likes,
      required final String username,
      required final String name,
      @JsonKey(name: 'profile_image') required final ProfileImage profileImage}) = _$User$;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$.fromJson;

  @override
  dynamic get likes;
  @override
  String get username;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_image')
  ProfileImage get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$User$CopyWith<_$User$> get copyWith => throw _privateConstructorUsedError;
}

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return ProfileImage$.fromJson(json);
}

/// @nodoc
mixin _$ProfileImage {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageCopyWith<ProfileImage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res, ProfileImage>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res, $Val extends ProfileImage> implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImage$CopyWith<$Res> implements $ProfileImageCopyWith<$Res> {
  factory _$$ProfileImage$CopyWith(_$ProfileImage$ value, $Res Function(_$ProfileImage$) then) =
      __$$ProfileImage$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$ProfileImage$CopyWithImpl<$Res> extends _$ProfileImageCopyWithImpl<$Res, _$ProfileImage$>
    implements _$$ProfileImage$CopyWith<$Res> {
  __$$ProfileImage$CopyWithImpl(_$ProfileImage$ _value, $Res Function(_$ProfileImage$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$ProfileImage$(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImage$ implements ProfileImage$ {
  const _$ProfileImage$({required this.small, required this.medium, required this.large});

  factory _$ProfileImage$.fromJson(Map<String, dynamic> json) => _$$ProfileImage$FromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'ProfileImage(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImage$ &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImage$CopyWith<_$ProfileImage$> get copyWith =>
      __$$ProfileImage$CopyWithImpl<_$ProfileImage$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImage$ToJson(
      this,
    );
  }
}

abstract class ProfileImage$ implements ProfileImage {
  const factory ProfileImage$(
      {required final String small, required final String medium, required final String large}) = _$ProfileImage$;

  factory ProfileImage$.fromJson(Map<String, dynamic> json) = _$ProfileImage$.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImage$CopyWith<_$ProfileImage$> get copyWith => throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  List<UnsplashPhoto> get photos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get submittedQuery => throw _privateConstructorUsedError;
  UnsplashPhoto? get selectedPhoto => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<int> get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {List<UnsplashPhoto> photos,
      bool isLoading,
      bool isSearching,
      bool submittedQuery,
      UnsplashPhoto? selectedPhoto,
      String query,
      int page,
      List<int> liked});

  $UnsplashPhotoCopyWith<$Res>? get selectedPhoto;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? submittedQuery = null,
    Object? selectedPhoto = freezed,
    Object? query = null,
    Object? page = null,
    Object? liked = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UnsplashPhoto>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      submittedQuery: null == submittedQuery
          ? _value.submittedQuery
          : submittedQuery // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPhoto: freezed == selectedPhoto
          ? _value.selectedPhoto
          : selectedPhoto // ignore: cast_nullable_to_non_nullable
              as UnsplashPhoto?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashPhotoCopyWith<$Res>? get selectedPhoto {
    if (_value.selectedPhoto == null) {
      return null;
    }

    return $UnsplashPhotoCopyWith<$Res>(_value.selectedPhoto!, (value) {
      return _then(_value.copyWith(selectedPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(_$AppState$ value, $Res Function(_$AppState$) then) = __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UnsplashPhoto> photos,
      bool isLoading,
      bool isSearching,
      bool submittedQuery,
      UnsplashPhoto? selectedPhoto,
      String query,
      int page,
      List<int> liked});

  @override
  $UnsplashPhotoCopyWith<$Res>? get selectedPhoto;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(_$AppState$ _value, $Res Function(_$AppState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? submittedQuery = null,
    Object? selectedPhoto = freezed,
    Object? query = null,
    Object? page = null,
    Object? liked = null,
  }) {
    return _then(_$AppState$(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UnsplashPhoto>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      submittedQuery: null == submittedQuery
          ? _value.submittedQuery
          : submittedQuery // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPhoto: freezed == selectedPhoto
          ? _value.selectedPhoto
          : selectedPhoto // ignore: cast_nullable_to_non_nullable
              as UnsplashPhoto?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      liked: null == liked
          ? _value._liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final List<UnsplashPhoto> photos = const <UnsplashPhoto>[],
      this.isLoading = false,
      this.isSearching = false,
      this.submittedQuery = false,
      this.selectedPhoto,
      this.query = 'travel',
      this.page = 1,
      final List<int> liked = const <int>[]})
      : _photos = photos,
        _liked = liked;

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  final List<UnsplashPhoto> _photos;
  @override
  @JsonKey()
  List<UnsplashPhoto> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final bool submittedQuery;
  @override
  final UnsplashPhoto? selectedPhoto;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int page;
  final List<int> _liked;
  @override
  @JsonKey()
  List<int> get liked {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liked);
  }

  @override
  String toString() {
    return 'AppState(photos: $photos, isLoading: $isLoading, isSearching: $isSearching, submittedQuery: $submittedQuery, selectedPhoto: $selectedPhoto, query: $query, page: $page, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.isSearching, isSearching) || other.isSearching == isSearching) &&
            (identical(other.submittedQuery, submittedQuery) || other.submittedQuery == submittedQuery) &&
            (identical(other.selectedPhoto, selectedPhoto) || other.selectedPhoto == selectedPhoto) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._liked, _liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos), isLoading, isSearching,
      submittedQuery, selectedPhoto, query, page, const DeepCollectionEquality().hash(_liked));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith => __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final List<UnsplashPhoto> photos,
      final bool isLoading,
      final bool isSearching,
      final bool submittedQuery,
      final UnsplashPhoto? selectedPhoto,
      final String query,
      final int page,
      final List<int> liked}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  List<UnsplashPhoto> get photos;
  @override
  bool get isLoading;
  @override
  bool get isSearching;
  @override
  bool get submittedQuery;
  @override
  UnsplashPhoto? get selectedPhoto;
  @override
  String get query;
  @override
  int get page;
  @override
  List<int> get liked;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith => throw _privateConstructorUsedError;
}
