import 'package:photo_app/src/actions/actions.dart';
import 'package:photo_app/src/data/photo_api.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  AppEpics(this._api);

  final UnsplashPhotoApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotosStart),
      TypedEpic<AppState, UpdateLikeStart>(_updateLikeSuccessful),
    ]);
  }

  Stream<dynamic> _getPhotosStart(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart action) => _api.getPictures(store.state.page, store.state.query))
        .map((List<UnsplashPhoto> photos) => GetPhotos.successful(photos))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPhotos.error(error, stackTrace));
  }

  Stream<dynamic> _updateLikeSuccessful(Stream<UpdateLikeStart> actions, EpicStore<AppState> store) {
    return actions.asyncMap(
      (UpdateLikeStart action) => _api
          .updateLike(action.id, like: action.like)
          .asStream()
          .map((_) => UpdateLike.successful(action.id, like: action.like))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => UpdateLike.error(error, stackTrace)),
    );
  }
}
