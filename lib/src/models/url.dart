part of 'models.dart';

@freezed
class Url with _$Url {
  const factory Url({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) = Url$;

  factory Url.fromJson(Map<dynamic, dynamic> json) => _$UrlFromJson(Map<String, dynamic>.from(json));
}
