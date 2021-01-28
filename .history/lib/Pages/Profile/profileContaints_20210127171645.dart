import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/constants.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

class ProfileContaints extends StatefulWidget {
  final Image image;
  final int index;

  const ProfileContaints({Key key, this.image, this.index}) : super(key: key);

  _ProfileContaints createState() => _ProfileContaints(image);
}

//TODO: Impliment Lazy Loading
//TODO: Impliment Gesture detecction

class _ProfileContaints extends State<ProfileContaints> {
  Image _image;

  _ProfileContaints(this._image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Comments'),
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            pinned: true,
            elevation: 20,
            forceElevated: true,
            shadowColor: primaryColour,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: TabBar(),
            ),
            flexibleSpace: SwipeGestureRecognizer(
              onSwipeDown: () {
                Navigator.pop(context);
              },
              child: FlexibleSpaceBar(
                background: Hero(
                  tag: 'image',
                  transitionOnUserGestures: true,
                  child: Image(
                    image: this._image.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBar extends StatelessWidget {
  const TabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Posts",
                      style: st,
                    ),
                    Text(
                      users[0].posts.toString(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Following",
                    ),
                    Text(
                      users[0].following.toString(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Followers",
                    ),
                    Text(
                      users[0].followers.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
