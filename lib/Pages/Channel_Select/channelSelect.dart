import 'package:flutter/material.dart';
import 'package:obscura/Pages/Channel_Select/Components/continueButton.dart';
import 'package:obscura/constants.dart';

import 'Components/channelListing.dart';

class ChannelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            color: primaryColour,
          ),
          ChannelListing(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: ContinueButton(),
            ),
          ),
        ],
      ),
    );
  }
}
