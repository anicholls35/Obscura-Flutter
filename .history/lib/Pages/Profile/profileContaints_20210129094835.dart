import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Buttons/popButton.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Pages/Profile/Components/followingFollowers.dart';
import 'package:obscura/Pages/Profile/Components/profilePosts.dart';
import 'package:obscura/constants.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

class ProfileContaints extends StatefulWidget {
  final Image image;
  final int index;

  const ProfileContaints({Key key, this.image, this.index}) : super(key: key);

  _ProfileContaints createState() => _ProfileContaints(image);
}

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
    Size size = MediaQuery.of(context).size;
    List<Widget> pages = [
      ProfilePosts(),
      FollowingFollowers(color: Colors.blue)
    ];
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              title: Text(users[0].userName),
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              pinned: true,
              elevation: 20,
              forceElevated: true,
              leading: PopButton(
                size: 20,
              ),
              shadowColor: primaryColour,
              bottom: PreferredSize(
                preferredSize: Size(size.width, 40),
                child: ProfileTabBar(),
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
            SliverFillRemaining(
              child: TabBarView(
                children: pages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: <Widget>[
        Tab(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Text(
                  'posts'.toUpperCase(),
                ),
                Text('10'),
              ],
            ),
          ),
        ),
        Tab(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Text(
                  'following'.toUpperCase(),
                ),
                Text('300'),
              ],
            ),
          ),
        ),
        Tab(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Text(
                  'followers'.toUpperCase(),
                ),
                Text('250'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
