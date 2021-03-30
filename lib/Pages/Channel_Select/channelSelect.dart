import 'package:flutter/material.dart';
import 'package:obscura/Pages/Channel_Select/Components/continueButton.dart';
import 'package:obscura/constants.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../Feed/feed.dart';
import 'Components/channelListing.dart';

class ChannelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("Join Channels"),
        appBar: AppBar(),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => Feed()));
        },
        label: Text("Continue to Feed"),
      ),
      body: ChannelListing(),
    );
  }
}
