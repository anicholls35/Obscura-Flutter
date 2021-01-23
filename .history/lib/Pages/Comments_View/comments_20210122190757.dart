import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';
import 'package:obscura/constants.dart';

class Comments extends StatefulWidget {
  final NetworkImage image;
  final int index;

  const Comments({Key key, this.image, this.index) : super(key: key);

  _Comments createState() => _Comments(image, index);
}

class _Comments extends State<Comments> {
  NetworkImage _image;
  int _index;

  _Comments(this._image, this._index);

  List<Widget> _getItems() {
    List<String> _comments = genComments(posts[_index].comments);
    List<Container> _commentCards = [];
    for (int i = 0; i < _comments.length; i++) {
      _commentCards.add(Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[

          ],
        ),
      ));
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