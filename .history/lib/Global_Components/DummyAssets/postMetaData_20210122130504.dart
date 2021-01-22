import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/userAccount.dart';

class PostMetaData extend Widget{
  final String geoLocation;
  final NetworkImage postImage;
  final UserAccount uploader;

  PostMetaData(
      {@required this.uploader,
      @required this.geoLocation,
      @required this.postImage});
}
