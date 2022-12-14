part of 'models.dart';

@freezed
class UnsplashPhoto with _$UnsplashPhoto {
  const factory UnsplashPhoto({
    @Default('No description.') String description,
    required int id,
    required Url urls,
    required int likes,
    required User user,
  }) = UnsplashPhoto$;
  const UnsplashPhoto._();

  factory UnsplashPhoto.fromJson(Map<dynamic, dynamic> json) =>
      _$UnsplashPhotoFromJson(Map<String, dynamic>.from(json));
}
