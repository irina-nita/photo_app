import 'package:photo_app/src/actions/actions.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetPhotosSuccessful>(_getPhotoSuccessful),
  TypedReducer<AppState, GetPhotosStart>(_getPhotoStart),
  TypedReducer<AppState, GetPhotosError>(_getPhotoError),
  TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto),
  TypedReducer<AppState, SubmitQuery>(_submitQuery),
  TypedReducer<AppState, ToggleSearch>(_toggleSearch),
  TypedReducer<AppState, UpdateLikeSuccessful>(_updateLikeSuccessful)
]);

AppState _getPhotoSuccessful(AppState state, GetPhotosSuccessful action) {
  return state.copyWith(
    isLoading: false,
    photos: <UnsplashPhoto>[
      ...state.photos,
      ...action.photos,
    ],
    page: state.page + 1,
  );
}

AppState _getPhotoStart(AppState state, GetPhotosStart action) {
  return state.copyWith(
    isLoading: true,
    photos: state.submittedQuery ? <UnsplashPhoto>[] : state.photos,
    submittedQuery: state.submittedQuery ? !state.submittedQuery : state.submittedQuery,
  );
}

AppState _getPhotoError(AppState state, GetPhotosError action) {
  return state.copyWith(
    isLoading: false,
    submittedQuery: false,
    isSearching: false,
  );
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.copyWith(
    selectedPhoto: action.photo,
  );
}

AppState _toggleSearch(AppState state, ToggleSearch action) {
  return state.copyWith(
    isSearching: !state.isSearching,
  );
}

AppState _submitQuery(AppState state, SubmitQuery action) {
  return state.copyWith(
    query: action.query,
    page: 1,
    submittedQuery: true,
  );
}

AppState _updateLikeSuccessful(AppState state, UpdateLikeSuccessful action) {
  final List<int> liked = <int>[...state.liked, if (action.like) action.id];

  if (!action.like) {
    liked.remove(action.id);
  }

  return state.copyWith(
    liked: liked,
  );
}
