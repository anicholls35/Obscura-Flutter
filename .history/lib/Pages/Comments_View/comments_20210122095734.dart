import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

class Comments extends StatefulWidget {
  
}

class _Comments extends State<Comments>{
    final PostImage image;

  const Comments({Key key, this.image}) : super(key: key);

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
