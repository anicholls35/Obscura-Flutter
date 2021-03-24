import 'package:flutter/material.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:provider/provider.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../../Global_Componets/Dummy_Assets/fakeData.dart';
import '../../Global_Componets/NavBar/baseNavBar.dart';
import '../../Global_Componets/fadeRoute.dart';
import '../../constants.dart';
import '../../constants.dart';
import '../../main.dart';
import '../Feed/feed.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _pageIndex = 4;
    String versionNumber = '1.3.1-pre+1238';
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
                SettingChoiceCard(
                  icon: Icons.logout,
                  name: "Sign Out",
                  signOut: true,
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
  bool signOut;

  SettingChoiceCard({
    Key key,
    @required this.icon,
    @required this.name,
    this.page,
    this.signOut = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          if (this.signOut) {
            context.read<AuthenticationService>().signOut().then((res) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Signed-Out"),
                    content: Text(res),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Close"),
                      ),
                    ],
                  );
                },
              );
            });
            Navigator.pushReplacement(
              context,
              FadeRoute(
                page: AuthenticationWrapper(),
              ),
            );
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          }
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
