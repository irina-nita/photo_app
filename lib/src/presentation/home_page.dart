import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/src/actions/actions.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Store<AppState> _store;
  final ScrollController _controller = ScrollController();

  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;

    if (offset > maxScrollExtent - MediaQuery.of(context).size.height && !_store.state.isLoading) {
      _store.dispatch(const GetPhotos());
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _store = StoreProvider.of<AppState>(context, listen: false);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              controller: _controller,
              slivers: <Widget>[
                SliverAppBar(
                  floating: true,
                  title: Builder(
                    builder: (BuildContext context) {
                      // If the user is not searching anything, it displays the title.
                      if (!state.isSearching) {
                        return const Text(
                          'Photos',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      } else {
                        // If the user is searching, the title is replaced with a Search Field.
                        return SizedBox(
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              onSubmitted: (String input) {
                                // Reload the photos with the query given.
                                store
                                  ..dispatch(SubmitQuery(query: input))
                                  ..dispatch(const GetPhotos());
                              },
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.pinkAccent,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.pinkAccent),
                                ),
                                hintText: 'Search Photo',
                                contentPadding: const EdgeInsets.only(left: 15),
                                fillColor: const Color(0xfff3f3f4),
                                filled: true,
                                hintStyle: const TextStyle(
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              cursorColor: Colors.pinkAccent,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  actions: <Widget>[
                    IconButton(
                      onPressed: () {
                        // Return to the default photos with query 'travel'.
                        if (state.isSearching && !state.isLoading) {
                          store
                            ..dispatch(const SubmitQuery())
                            ..dispatch(const GetPhotos());
                        }
                        // Toggle between text title and Search Field.
                        store.dispatch(const ToggleSearch());
                      },
                      icon: Builder(
                        builder: (BuildContext context) {
                          // Toggle between Icons.
                          if (!state.isSearching) {
                            return const Icon(
                              Icons.search,
                              color: Colors.pinkAccent,
                            );
                          } else {
                            return const Icon(
                              Icons.arrow_back,
                              color: Colors.pinkAccent,
                            );
                          }
                        },
                      ),
                    )
                  ],
                ),
                SliverGrid(
                  //controller: _controller,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.photos.length + 2,
                    (BuildContext context, int index) {
                      // Display loading widget.
                      if (state.photos.length == index || store.state.photos.length + 2 == index) {
                        return const SizedBox.shrink();
                      }
                      if (state.photos.length + 1 == index) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final UnsplashPhoto photo = state.photos[index];

                      return GestureDetector(
                        // If the user double taps on the picture, go to the Details Page.
                        onDoubleTap: () {
                          store.dispatch(UpdateLike(photo.id, like: true));
                        },
                        onTap: () {
                          store.dispatch(SetSelectedPhoto(photo));
                          Navigator.pushNamed(context, '/pictureDetails');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            width: 400,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              image: DecorationImage(image: NetworkImage(photo.urls.small), fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
