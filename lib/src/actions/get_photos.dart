part of 'actions.dart';

@freezed
class GetPhotos with _$GetPhotos {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<UnsplashPhoto> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(Object error, StackTrace stackTrace) = GetPhotosError;
}
