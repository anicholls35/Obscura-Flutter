import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:obscura/Pages/Profile/profileFollowers.dart';
import 'package:obscura/Pages/Profile/profileFollowing.dart';
import 'package:obscura/Pages/Profile/profilePosts.dart';

class ProfileSplashscreen extends StatelessWidget {
  ProfileSplashscreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SplashBody();
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double followRadius = width * 0.12;
    return Scaffold(
      backgroundColor: const Color(0xffd0005d),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Profile-Pic' (shape)
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xff2b2b2b),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, height * 0.9),
            child:
                // Adobe XD layer: 'Btm-Shadow' (shape)
                Container(
              width: width,
              height: height * 0.1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xA8000000),
                      const Color(0x00000000),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.15, 1]),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, 0),
            child:
                // Adobe XD layer: 'Top-Shadow' (shape)
                Container(
              width: width,
              height: height * 0.1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xA8000000),
                      const Color(0x00000000),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.2, 1]),
                //color: const Color(0xb3d0005d),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, height * 0.75),
            child:
                // Adobe XD layer: 'Profile-info' (group)
                SizedBox(
              width: width,
              height: height * 0.25,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0, 0, width, height),
                    size: Size(width, height),
                    child:
                        // Adobe XD layer: 'Txt-holder' (shape)
                        Container(
                      decoration: BoxDecoration(
                        color: const Color(0x30ffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.0, height * 0.75,
                        width * 0.25, height * 0.05),
                    size: Size(width, height),
                    //pinLeft: true,
                    //fixedWidth: true,
                    fixedHeight: true,

                    child: Text(
                      '0000',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 28,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.25, height * 0.75,
                        width * 0.5, height * 0.05),
                    size: Size(width, height),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '0000',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 28,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.5, height * 0.75,
                        width * 0.75, height * 0.05),
                    size: Size(width, height),
                    fixedHeight: true,
                    child: Text(
                      '0000',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 28,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0, 0, width, height),
                    size: Size(width, height),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Titles' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(
                              0.0, height * 0.80, width * 0.25, height * 0.9),
                          size: Size(width, height),
                          child: Text(
                            'Posts',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w100,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(width * 0.25, height * 0.8,
                              width * 0.5, height * 0.9),
                          size: Size(width, height),
                          //pinTop: true,
                          //pinBottom: true,
                          //fixedWidth: true,
                          child: Text(
                            'Following',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w100,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(width * 0.5, height * 0.8,
                              width * 0.75, height * 0.9),
                          size: Size(width, height),
                          //pinRight: true,
                          //pinTop: true,
                          //pinBottom: true,
                          //fixedWidth: true,
                          child: Text(
                            'Followers',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w100,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0, 0, width, height),
                    size: Size(width, height),
                    //pinLeft: true,
                    //pinBottom: true,
                    //fixedWidth: true,
                    //fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Active' (shape)
                        SvgPicture.string(
                      _svg_s61avs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(
                        width * 0.04, height * 0.05, width, height),
                    size: Size(width, height),
                    child: Text(
                      'First\nLast Name',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 42,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.05, height * 0.795,
                        width * 0.15, height * 0.06),
                    size: Size(width, height),
                    fixedHeight: true,
                    child: FlatButton(
                      child: Text(''),
                      color: Color(0x00000000),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePosts()),
                        );
                      },
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.42, height * 0.795,
                        width * 0.16, height * 0.06),
                    size: Size(width, height),
                    fixedHeight: true,
                    child: FlatButton(
                      child: Text(''),
                      color: Color(0x00000000),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileFollowing()),
                        );
                      },
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(width * 0.8, height * 0.795,
                        width * 0.15, height * 0.06),
                    size: Size(width, height),
                    fixedHeight: true,
                    child: FlatButton(
                      child: Text(''),
                      color: Color(0x00000000),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileFollowers()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(19.0, 24.0),
            child:
                // Adobe XD layer: 'Back-Page' (group)
                SizedBox(
              width: 24.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                    size: Size(24.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Back-Arrow' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                          size: Size(24.0, 24.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Rounded' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                                size: Size(24.0, 24.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Navigation' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                                      size: Size(24.0, 24.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child:
                                          // Adobe XD layer: '-Round-/-Navigation…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 24.0, 24.0),
                                            size: Size(24.0, 24.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 24.0, 24.0),
                                                  size: Size(24.0, 24.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child:
                                                      // Adobe XD layer: 'Path' (shape)
                                                      SvgPicture.string(
                                                    _svg_cy0x10,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      6.2, 2.6, 10.7, 18.8),
                                                  size: Size(24.0, 24.0),
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child:
                                                      // Adobe XD layer: '🔹-Icon-Color' (shape)
                                                      SvgPicture.string(
                                                    _svg_hmpxfh,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(width * 0.8, height * 0.795),
            child:
                // Adobe XD layer: 'Follow-btn' (group)
                SizedBox(
              width: followRadius,
              height: followRadius,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4, 2, followRadius, followRadius),
                    size: Size(followRadius, followRadius),
                    pinBottom: true,
                    fixedHeight: false,
                    child:
                        // Adobe XD layer: 'btn-shadow' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(followRadius),
                        color: const Color(0x63000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds:
                        Rect.fromLTWH(0.0, 0.0, followRadius, followRadius),
                    size: Size(followRadius, followRadius),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'btn' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(follow_radius),
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xffd0005d),
                              const Color(0xffFF9EF6),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.1, 0.999]),
                      ),
                      //color: const Color(0xff2dfdcf)),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds:
                        Rect.fromLTWH(0.0, 0.0, follow_radius, follow_radius),
                    size: Size(follow_radius, follow_radius),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: FlatButton(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 27,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProfileSplashscreenFollowing()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(358.0, 15.0),
            child: Text(
              '…',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 27,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_s61avs =
    '<svg viewBox="15.5 856.5 72.0 1.0" ><path transform="translate(15.5, 856.5)" d="M 0 0 L 72 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cy0x10 =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" fill-opacity="0.87" stroke="none" stroke-width="1" stroke-opacity="0.87" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hmpxfh =
    '<svg viewBox="6.2 2.6 10.7 18.8" ><path  d="M 16.6200008392334 2.990000009536743 C 16.1299991607666 2.5 15.34000015258789 2.5 14.85000038146973 2.990000009536743 L 6.539999961853027 11.30000019073486 C 6.150000095367432 11.6899995803833 6.150000095367432 12.31999969482422 6.539999961853027 12.71000003814697 L 14.85000038146973 21.02000045776367 C 15.34000015258789 21.51000022888184 16.1299991607666 21.51000022888184 16.6200008392334 21.02000045776367 C 17.11000061035156 20.53000068664551 17.11000061035156 19.73999977111816 16.6200008392334 19.25 L 9.380000114440918 12 L 16.6299991607666 4.75 C 17.11000061035156 4.269999980926514 17.11000061035156 3.470000028610229 16.6200008392334 2.990000009536743 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
