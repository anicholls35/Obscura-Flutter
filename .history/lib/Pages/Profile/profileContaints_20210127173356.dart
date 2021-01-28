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

  List<Widget> _getItems() {
    List<Container> _commentCards = [];
    for (int i = 0; i < posts[0].comments; i++) {
      _commentCards.add(Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2.0,
              color: Color(0xff424242),
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                border: Border.all(color: accentColour),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: posts[0].uploader.profilePicture.image,
                ),
              ),
            ),
            Flexible(child: genComments()),
          ],
        ),
      ));
    }

    return _commentCards;
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text(users[0].userName),
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            pinned: true,
            elevation: 20,
            forceElevated: true,
            shadowColor: primaryColour,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(),
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
          SliverList(
            delegate: SliverChildListDelegate(
              _getItems(),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50,
              child: Column(
                children: <Widget>[
                  Text(
                    "Posts",
                    style: style,
                  ),
                  Text(
                    users[0].posts.toString(),
                    style: style,
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
                    style: style,
                  ),
                  Text(
                    users[0].following.toString(),
                    style: style,
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
                    style: style,
                  ),
                  Text(
                    users[0].followers.toString(),
                    style: style,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
