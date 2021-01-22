import 'package:flutter/material.dart';

class PostMetaData {
  final geoLocation;
  final NetworkImage postImage;

  PostMetaData(
      {@required this.uploaderName,
      @required this.geoLocation,
      @required this.postImage});
}
