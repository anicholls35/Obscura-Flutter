import 'package:flutter/material.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../../Global_Componets/Dummy_Assets/fakeData.dart';
import '../../Global_Componets/NavBar/baseNavBar.dart';
import '../../constants.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _pageIndex = 4;
    String versionNumber = '1.1.0-pre+12382';
    return Scaffold(
        backgroundColor: accentColour,
        appBar: BaseAppBar(
          title: Text(''),
          appBar: AppBar(),
          activeUserPic: users[0].profilePicture,
          backgroundColor: accentColour,
          elevation: 0,
          backIcon: true,
        ),
        bottomNavigationBar: BaseNavBar(index: _pageIndex),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                //Settings for back panel
                child: Container(
                  height: MediaQuery.of(context).size.height * .75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColour,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                    ),
                  ),
                  child: Stack(
                    //Primary Colour Container Stack - Add Items Here
                    children: <Widget>[
                      Positioned(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'settings'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 55,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'VERSION: $versionNumber',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
