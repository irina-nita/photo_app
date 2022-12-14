import 'dart:convert';

import 'package:http/http.dart';
import 'package:photo_app/src/data/access_link.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Class for using the Unsplash API.
class UnsplashPhotoApi {
  UnsplashPhotoApi(this._client, this._preferences);

  final Client _client;
  final SharedPreferences _preferences;

  Future<List<UnsplashPhoto>> getPictures(int page, String query) async {
    final Response response = await _client.get(
      Uri.parse(
        'https://api.unsplash.com/search/photos?page=$page&per_page=27&query=$query&$accessLink',
      ),
    );
    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    return (body['results'] as List<dynamic>)
        .map((dynamic item) => UnsplashPhoto.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<void> updateLike(int id, {required bool like}) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final String key = '$id';
    if (like) {
      await _preferences.setInt(key, id);
    } else {
      await _preferences.remove(key);
    }
  }
}
