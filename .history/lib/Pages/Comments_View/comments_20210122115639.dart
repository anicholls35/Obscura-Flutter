import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';
import 'package:obscura/constants.dart';

class Comments extends StatefulWidget {
  final NetworkImage image;

  const Comments({Key key, this.image}) : super(key: key);

  _Comments createState() => _Comments(image);
}

class _Comments extends State<Comments> {
  NetworkImage _image;

  _Comments(this._image);

  List<Widget> _getItems() {
    List<Card> _cards = [];
    for (int i = 1; i <= 50; i++) {
      _cards.add(
        Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            title: Text('Items $i'),
          ),
        ),
      );
    }
    return _cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        on
        child: CustomScrollView(
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
      ),
    );
  }
}