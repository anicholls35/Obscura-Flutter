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

class _ProfileContaints extends State<ProfileContaints>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;
  Image _image;

  _ProfileContaints(this._image);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
    );
    _scrollViewController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> pages = [
      ProfilePosts(),
      FollowingFollowers(color: Colors.blue),
      FollowingFollowers(color: Colors.yellow),
    ];
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
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
              bottom: TabBar(
                controller: _tabController,
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
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: pages,
        ),
      ),
    );
  }

//   DefaultTabController buildDefaultTabController(BuildContext context, Size size, List<Widget> pages) {
//     return DefaultTabController(
//     length: 3,
//     initialIndex: 0,
//     child: Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             centerTitle: true,
//             title: Text(users[0].userName),
//             expandedHeight: MediaQuery.of(context).size.height * 0.4,
//             pinned: true,
//             elevation: 20,
//             forceElevated: true,
//             leading: PopButton(
//               size: 20,
//             ),
//             shadowColor: primaryColour,
//             bottom: PreferredSize(
//               preferredSize: Size(size.width, 40),
//               child: ProfileTabBar(),
//             ),
//             flexibleSpace: SwipeGestureRecognizer(
//               onSwipeDown: () {
//                 Navigator.pop(context);
//               },
//               child: FlexibleSpaceBar(
//                 background: Hero(
//                   tag: 'image',
//                   transitionOnUserGestures: true,
//                   child: Image(
//                     image: this._image.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: TabBarView(
//               children: pages,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
//   }
}

class ProfileTabBar extends StatelessWidget {
  TabController tabController;
  ProfileTabBar({
    Key key,
    @required this.tabController,
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
      controller: tabController,
    );
  }
}
