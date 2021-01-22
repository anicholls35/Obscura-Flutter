import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/userAccount.dart';

class PostMetaData {
  final String geoLocation;
  final NetworkImage postImage;
  final UserAccount uploader;
  final int comments;
  final double rating;

  PostMetaData(
      {@required this.uploader,
      @required this.geoLocation,
      @required this.postImage,
      this.comments,
      this.rating});
}
