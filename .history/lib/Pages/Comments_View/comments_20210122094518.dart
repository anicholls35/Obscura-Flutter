import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

class Comments extends StatelessWidget {
  final PostImage image;

  const Comments({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'image',
      child: PostImage(
        pImage: feedPhotos[0],
      ),
    );
  }
}
