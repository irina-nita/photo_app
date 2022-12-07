import 'package:freezed_annotation/freezed_annotation.dart';

part 'unsplash_photo.freezed.dart';
part 'unsplash_photo.g.dart';

@freezed
class UnsplashPhoto with _$UnsplashPhoto {
  const factory UnsplashPhoto({
    @Default('No description.') String description,
    required Map<String, String> urls,
    required int likes,
    required Map<String, dynamic> user,
  }) = UnsplashPhoto$;
  const UnsplashPhoto._();

  factory UnsplashPhoto.fromJson(Map<dynamic, dynamic> json) =>
      _$UnsplashPhotoFromJson(Map<String, dynamic>.from(json));

  String getName() => user['name'] as String;

  String getUsername() => user['username'] as String;

  String getProfilePicture() => (user['profile_image'] as Map<String, dynamic>)['small']! as String;

  String getSmallPhoto() => urls['small']!;

  String getRegularPhoto() => urls['regular']!;
}
