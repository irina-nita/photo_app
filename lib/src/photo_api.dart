import 'dart:convert';

import 'package:http/http.dart';
import 'package:photo_app/src/models/unsplash_photo.dart';

/// Class for using the Unsplash API.
class UnsplashPhotoApi {
  UnsplashPhotoApi(this._client);

  final Client _client;

  Future<List<UnsplashPhoto>> getPictures(int page, String query, String access) async {
    final Response response = await _client.get(
      Uri.parse(
        'https://api.unsplash.com/search/photos?page=$page&per_page=27&query=$query&client_id=DCHG_iBht92FDWzF-YiNSiYM3-QoeXDr7dlatNJ1h8U',
      ),
    );

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;

    return (body['results'] as List<dynamic>)
        .map((dynamic item) => UnsplashPhoto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
