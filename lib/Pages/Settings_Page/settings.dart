import 'package:flutter/material.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../../Global_Componets/Dummy_Assets/fakeData.dart';
import '../../Global_Componets/NavBar/baseNavBar.dart';
import '../../constants.dart';
import '../../constants.dart';
import '../Feed/feed.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _pageIndex = 4;
    String versionNumber = '1.1.0-pre+12382';
    return Scaffold(
      backgroundColor: primaryColour,
      appBar: BaseAppBar(
        title: Text('settings'.toUpperCase()),
        appBar: AppBar(),
        activeUserPic: users[0].profilePicture,
        elevation: 0,
        backIcon: true,
      ),
      bottomNavigationBar: BaseNavBar(index: _pageIndex),
      body: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                SettingChoiceCard(
                  name: 'Account Settings',
                  icon: Icons.account_circle,
                ),
                SettingChoiceCard(
                  icon: Icons.security,
                  name: 'Security',
                ),
                SettingChoiceCard(
                  icon: Icons.accessibility_new,
                  name: 'Accessibility',
                ),
                SettingChoiceCard(
                  icon: Icons.info,
                  name: 'Policies',
                ),
                SettingChoiceCard(
                  icon: Icons.help,
                  name: 'About',
                ),
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'VERSION: $versionNumber',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SettingChoiceCard extends StatelessWidget {
  String name;
  IconData icon;
  Widget page;

  SettingChoiceCard({
    Key key,
    @required this.icon,
    @required this.name,
    this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.white, width: 2),
            ),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '$name',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
