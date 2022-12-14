part of 'models.dart';

@freezed
class User with _$User {
  const factory User({
    required dynamic likes,
    required String username,
    required String name,
    @JsonKey(name: 'profile_image') required ProfileImage profileImage,
  }) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}
