import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:photo_app/src/actions/actions.dart';
import 'package:photo_app/src/data/photo_api.dart';
import 'package:photo_app/src/epics/app_epics.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:photo_app/src/presentation/details_page.dart';
import 'package:photo_app/src/presentation/home_page.dart';
import 'package:photo_app/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  final List<int> liked = preferences.getKeys().map((String id) => int.parse(id)).toList();

  final Client client = Client();
  final UnsplashPhotoApi api = UnsplashPhotoApi(client, preferences);
  final AppEpics epics = AppEpics(api);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(
      liked: liked,
    ),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  )
    ..dispatch(const SubmitQuery())
    ..dispatch(const GetPhotos());

  runApp(
    PhotoApp(
      store: store,
    ),
  );
}

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/pictureDetails': (BuildContext context) {
            return const DetailsPage();
          }
        },
      ),
    );
  }
}
