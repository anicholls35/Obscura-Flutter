import 'package:flutter/material.dart';
import 'package:obscura/Full_Screen_Post/Components/fullScreenContainer.dart';
import 'package:obscura/Full_Screen_Post/Components/postImage.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';

//TODO: Display Post Full Screen
//TODO: Create Post Class which darkens image edges (Top + Bottom)
//TODO: Add a back button

class FullScreenPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FullScreenContainer(
          uploaderName: 'Adam Nicholls',
          geoLocation: 'Edinburgh, UK',
          uploaderProfilePic: accountPhotos[0],
          postImage: PostImage(pImage: ,),
        ),
    );
  }
}
