import 'package:flutter/material.dart';

class PostMetaData {
  final String geoLocation;
  final NetworkImage postImage;
  final UserAccount uploader;

  PostMetaData(
      {@required this.uploaderName,
      @required this.geoLocation,
      @required this.postImage});
}
