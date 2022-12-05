import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const PhotoApp());
}

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // canvasColor: const Color(0xfff5ebe0),
        canvasColor: const Color(0xffffe5d9),
        fontFamily: 'SpaceGrotesk',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  final List<String> pictures = <String>[];
  late bool _isLoading;
  int page = 1;

  /// Get the URLs for the cat pictures from Unsplash API.
  Future<void> _getPictures() async {
    setState(() {
      _isLoading = true;
    });
    final String link =
        'https://api.unsplash.com/search/photos?page=$page&per_page=27&query=cat&client_id=gMpgP8WkizPh41p91LXd0o-93pvacNSHX_HKsfQSHoI';
    final Response response = await get(Uri.parse(link));
    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> results = body['results'] as List<dynamic>;

    pictures.addAll(results
        .map((dynamic elem) => ((elem as Map<String, dynamic>)['urls'] as Map<String, dynamic>)['small'] as String),);
    page = page + 1;

    setState(() {
      _isLoading = false;
    });
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
      appBar: AppBar(
        title: const Text(
          'Photos🐱',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (_isLoading && page == 1) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            controller: _controller,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: pictures.length + 2,
            itemBuilder: (BuildContext context, int index) {
              // Display loading widget.
              if (pictures.length == index || pictures.length + 2 == index) {
                return const SizedBox.shrink();
              }
              if (pictures.length + 1 == index) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final String picture = pictures[index];
              return GestureDetector(
                // If the user double taps on the picture, highlight it.
                onDoubleTap: () => showDialog<void>(
                  context: context,
                  builder: (_) => AlertDialog(
                    elevation: 300,
                    contentPadding: EdgeInsets.zero,
                    content: Image.network(
                      pictures[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: 400,
                    height: 400,
                    child: Image.network(
                      picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
