import 'package:flutter/material.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/postImage.dart';

class Comments extends StatelessWidget {
  final PostImage image;

  const Comments ({Key key, this.image})
  @override
  Widget build(BuildContext context, postImage) {
    return Center(
      child: Hero(tag: 'image', child: postImage),
    );
  }
}
