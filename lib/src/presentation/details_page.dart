import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/src/models/models.dart';
import 'package:redux/redux.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
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
                regularImage: state.selectedPhoto!.urls.regular,
                likes: state.selectedPhoto!.likes,
                liked: state.liked.contains(state.selectedPhoto!.id),
              ),
              DescriptionAndUser(
                description: state.selectedPhoto!.description,
                profilePic: state.selectedPhoto!.user.profileImage.small,
                name: state.selectedPhoto!.user.name,
                userName: state.selectedPhoto!.user.username,
              ),
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
      },
    );
  }
}

class MainPhotoWithLikes extends StatelessWidget {
  const MainPhotoWithLikes({super.key, required this.regularImage, required this.likes, required this.liked});

  final String regularImage;
  final int likes;
  final bool liked;

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
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: liked ? Colors.red : Colors.white,
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
