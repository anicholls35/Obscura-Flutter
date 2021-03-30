import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Buttons/popButton.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/fadeRoute.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/imageView.dart';
import 'package:obscura/Pages/Profile/Components/profileFull.dart';
import 'package:obscura/Pages/Profile/Components/tabBarProfiles.dart';
import 'package:obscura/Pages/Profile/profileContaints.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

import '../../constants.dart';

class ProfileOverview extends StatefulWidget {
  _ProfileOverview createState() => _ProfileOverview();
}

class _ProfileOverview extends State<ProfileOverview> {
  Future<Map> _user;

  Future<Map> fetchUser() async {
    String uid = firebaseAuth.currentUser.uid;
    print("GOT HERE YAYA --> $uid");
    var user;

    await firebaseDatabase
        .collection("users")
        .where("uid", isEqualTo: uid)
        .get()
        .then((value) {
      value.docs.forEach((doc) {
        print("\n\n\nJust doc --> $doc\n\n\n");
        print("\n\n\ndoc.data() --> ${doc.data()}\n\n\n");
        user = doc.data();
      });
    });

    print("ABOUT TO RETURN YAYA");
    print("\n\n\n\n\n\n\n$user\n\n\n\n\n\n\n\n");
    return user;
  }

  @override
  void initState() {
    super.initState();
    _user = fetchUser();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: _user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final double height = MediaQuery.of(context).size.height;
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  //UserPic
                  SwipeGestureRecognizer(
                    onSwipeUp: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileContaints(
                            image: Image(
                              image: NetworkImage(snapshot.data["profile_pic"]),
                            ),
                          ),
                        ),
                      );
                    },
                    onSwipeRight: () {
                      Navigator.pop(context);
                    },
                    child: GestureDetector(
                      onTap: () {
                        print('Tap Detected');
                        Navigator.push(
                          context,
                          FadeRoute(
                            page: ImageView(
                              image: Image(
                                image:
                                    NetworkImage(snapshot.data["profile_pic"]),
                              ),
                            ),
                          ),
                        );
                      },
                      child: ProfileFull(
                        pImage: Image(
                          image: NetworkImage(snapshot.data["profile_pic"]),
                        ),
                      ),
                    ),
                  ),
                  //Back Button
                  Positioned(
                    top: height * 0.05,
                    left: MediaQuery.of(context).size.width * 0.01,
                    child: Container(
                      child: PopButton(
                        size: 30,
                      ),
                    ),
                  ),
                  //User Name
                  Positioned(
                    bottom: height * 0.13,
                    left: 15,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            snapshot.data["first_name"],
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Text(
                            snapshot.data["last_name"],
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Tab bar
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: height * 0.05,
                    child: Hero(
                      tag: 'tabBar',
                      child: TabBarProfiles(),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator.adaptive());
          }
        },
      );
}
