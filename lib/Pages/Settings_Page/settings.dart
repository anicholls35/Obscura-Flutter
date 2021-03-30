import 'package:flutter/material.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:provider/provider.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../../Global_Componets/Dummy_Assets/fakeData.dart';
import '../../Global_Componets/NavBar/baseNavBar.dart';
import '../../Global_Componets/fadeRoute.dart';
import '../../constants.dart';
import '../../main.dart';

class SettingChoiceCard extends StatelessWidget {
  String name;
  IconData icon;
  Widget page;
  bool signOut;
  void Function() onTap;

  SettingChoiceCard(
      {Key key,
      @required this.icon,
      @required this.name,
      this.page,
      this.signOut = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: onTap == null
            ? () {
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Under-Development"),
                          content: Text(
                              "Settings is still in development. All options, " +
                                  "except Sign-out are disabled."),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Okay"),
                            ),
                          ],
                        );
                      });
                }
              }
            : onTap,
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

// ignore: must_be_immutable
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _pageIndex = 4;
    String versionNumber = '2.1.0-pre+2163';
    String supportEmail = "luckygroup7@heriotwatt.onmicrosoft.com";
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
                SettingChoiceCard(
                  icon: Icons.delete_forever,
                  name: "Withdraw from Test",
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Withdrawl Instructions"),
                            content: Text(
                                "To withdrawl from the Obscura Early Development Test, " +
                                    "please email $supportEmail\nPlease allow " +
                                    "up to 48 hours for your account " +
                                    "to be removed from our servers.\n\n" +
                                    "Please provide feedback via the " +
                                    "questionaire handed out with the APK"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Okay"),
                              ),
                            ],
                          );
                        });
                  },
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
