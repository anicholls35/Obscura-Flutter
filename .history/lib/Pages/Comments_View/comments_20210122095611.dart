import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

class Comments extends StatefulWidget {
  final PostImage image;

  const Comments({Key key, this.image}) : super(key: key);

  _Comments extends s

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Hero(
        transitionOnUserGestures: true,
        tag: 'image',
        child: PostImage(
          pImage: feedPhotos[0],
        ),
      ),
    );
  }
}