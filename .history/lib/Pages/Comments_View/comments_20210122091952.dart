import 'package:flutter/material.dart';
import 'package:obscura/Pages/Full_Screen_Post/Components/postImage.dart';

class Comments extends StatelessWidget {

  final PostImage 
  @override
  Widget build(BuildContext context, postImage) {
    return Center(
      child: Hero(tag: 'image', child: postImage),
    );
  }
}
