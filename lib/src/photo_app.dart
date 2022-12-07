import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:photo_app/src/access_link.dart';
import 'package:photo_app/src/models/unsplash_photo.dart';
import 'package:photo_app/src/photo_api.dart';

void main() {
  runApp(const PhotoApp());
}

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String _access = accessLink;
  bool _isLoading = true;
  int page = 1;
  bool _isSearching = false;
  String _query = 'travel';
  bool submittedQuery = false;

  final ScrollController _controller = ScrollController();

  final List<UnsplashPhoto> _photos = <UnsplashPhoto>[];

  /// Get the queries photos from Unsplash API.
  Future<void> _getPictures() async {
    // If it submitted a query, clear the current photos and load the new ones.
    if (submittedQuery) {
      _photos.clear();
      setState(() {
        submittedQuery = false;
      });
    }

    setState(() {
      _isLoading = true;
    });

    // Add the photos from the Unsplash API to the _photos list.
    final Client client = Client();
    final UnsplashPhotoApi photoApi = UnsplashPhotoApi(client);
    final List<UnsplashPhoto> response = await photoApi.getPictures(page, _query, _access);

    setState(() {
      _photos.addAll(response);
      _isLoading = false;
    });
    page = page + 1;
  }

  /// At the end of a scroll, get the next page.
  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;
    if (offset == maxScrollExtent && !_isLoading) {
      _getPictures();
    }
  }

  @override
  void initState() {
    super.initState();
    _getPictures();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  if (!_isSearching) {
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
                            _query = input;
                            page = 1;
                            setState(() {
                              submittedQuery = true;
                            });
                            if (!_isLoading) {
                              _getPictures();
                            }
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
                    setState(() {
                      // Toggle between text title and Search Field.
                      _isSearching = !_isSearching;
                    });
                    // Return to the default photos with query 'travel'.
                    if (!_isSearching) {
                      _query = 'travel';
                      page = 1;
                      setState(() {
                        submittedQuery = true;
                      });
                      if (!_isLoading) {
                        _getPictures();
                      }
                    }
                  },
                  icon: Builder(
                    builder: (BuildContext context) {
                      // Toggle between Icons.
                      if (!_isSearching) {
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
                childCount: _photos.length + 2,
                (BuildContext context, int index) {
                  // Display loading widget.
                  if (_photos.length == index || _photos.length + 2 == index) {
                    return const SizedBox.shrink();
                  }
                  if (_photos.length + 1 == index) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final UnsplashPhoto photo = _photos[index];

                  return GestureDetector(
                    // If the user double taps on the picture, go to the Details Page.
                    onDoubleTap: () {
                      Navigator.pushNamed(context, '/pictureDetails', arguments: photo);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          image: DecorationImage(image: NetworkImage(photo.getSmallPhoto()), fit: BoxFit.cover),
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
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UnsplashPhoto photo = ModalRoute.of(context)!.settings.arguments! as UnsplashPhoto;

    final String userName = photo.getUsername();
    final String name = photo.getName();
    final String profilePic = photo.getProfilePicture();
    final String description = photo.description;

    return Scaffold(
      backgroundColor: const Color(0xffe3f2fd),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.pinkAccent,
        ),
      ),
      body: Column(
        children: <Widget>[
          MainPhotoWithLikes(
            regularImage: photo.getRegularPhoto(),
            likes: photo.likes,
          ),
          DescriptionAndUser(description: description, profilePic: profilePic, name: name, userName: userName),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.lightBlue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.indigoAccent,
              ),
              onPressed: () {},
              child: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[Icon(CupertinoIcons.cloud_download), Text('Download')],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainPhotoWithLikes extends StatelessWidget {
  const MainPhotoWithLikes({super.key, required this.regularImage, required this.likes});

  final String regularImage;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(regularImage), fit: BoxFit.cover),
            ),
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width - 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: <Color>[Colors.indigoAccent, Colors.transparent, Colors.transparent],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
            ),
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width - 20,
            child: Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15, left: 15),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.white,
                          size: 16,
                        ),
                        Text(
                          ' $likes',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DescriptionAndUser extends StatelessWidget {
  const DescriptionAndUser({
    super.key,
    required this.description,
    required this.profilePic,
    required this.name,
    required this.userName,
  });

  final String description;
  final String profilePic;
  final String name;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 5.5,
        width: MediaQuery.of(context).size.width - 20,
        child: Card(
          elevation: 0.8,
          shadowColor: Colors.lightBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        image: DecorationImage(image: NetworkImage(profilePic), fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          child: Text(
                            name,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        Text(
                          '@$userName',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: Colors.indigoAccent,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
