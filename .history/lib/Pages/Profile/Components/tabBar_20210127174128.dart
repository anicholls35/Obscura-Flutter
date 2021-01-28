import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';

class TabBarProfiles extends StatelessWidget {
  const TabBarProfiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(color: Colors.white, fontSize: 20);
    return Container(
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
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
