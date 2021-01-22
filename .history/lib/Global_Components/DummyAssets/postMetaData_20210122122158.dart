import 'package:flutter/material.dart';

class PostMetaData {
  final String uploaderName, geoLocation;
  final NetworkImage postImage;

  PostMetaData({@required this.uploaderName, this.geoLocation, this.postImage});
}
