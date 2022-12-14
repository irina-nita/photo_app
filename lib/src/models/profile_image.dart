part of 'models.dart';

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage({
    required String small,
    required String medium,
    required String large,
  }) = ProfileImage$;

  factory ProfileImage.fromJson(Map<dynamic, dynamic> json) => _$ProfileImageFromJson(Map<String, dynamic>.from(json));
}
