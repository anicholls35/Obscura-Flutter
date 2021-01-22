import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';
import 'package:obscura/constants.dart';

class Comments extends StatefulWidget {
  final NetworkImage image;
  final int commentsAmount;

  const Comments({Key key, this.image, this.commentsAmount}) : super(key: key);

  _Comments createState() => _Comments(image, commentsAmount);
}

class _Comments extends State<Comments> {
  NetworkImage _image;
  int _commentsAmount;

  _Comments(this._image, this._commentsAmount);

  List<Widget> _getItems() {
    List<String> _comments = genComments(_commentsAmount);
    List<Container> _commentCards = [];
    for (int i = 0; i < _comments.length; i++) {
      _commentCards.add();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Comments'),
            centerTitle: true,
            expandedHeight: 200,
            pinned: true,
            elevation: 20,
            forceElevated: true,
            shadowColor: primaryColour,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'image',
                transitionOnUserGestures: true,
                child: Image(
                  image: this._image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              _getItems(),
            ),
          ),
        ],
      ),
    );
  }
}
