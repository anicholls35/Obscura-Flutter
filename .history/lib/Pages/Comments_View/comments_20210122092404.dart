import 'package:flutter/material.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/postImage.dart';

class Comments extends StatelessWidget {
  final PostImage image;

  const Comments({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      
      child: Hero(tag: 'image', child: image),
    );
  }
}
