part of 'models.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<UnsplashPhoto>[]) List<UnsplashPhoto> photos,
    @Default(false) bool isLoading,
    @Default(false) bool isSearching,
    @Default(false) bool submittedQuery,
    UnsplashPhoto? selectedPhoto,
    @Default('travel') String query,
    @Default(1) int page,
    @Default(<int>[]) List<int> liked,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
