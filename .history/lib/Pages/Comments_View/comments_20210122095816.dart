import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

class Comments extends StatefulWidget {
  _Comments createState() => _Comments();
}

class _Comments extends State<Comments>{
    

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
