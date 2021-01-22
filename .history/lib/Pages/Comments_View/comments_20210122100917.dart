import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/fakeData.dart';
import 'package:obscura/Pages/Feed/Components/postImage.dart';

class Comments extends StatefulWidget {
  final PostImage image;

  const Comments({Key key, this.image}) : super(key: key);

  _Comments createState() => _Comments();
}

class _Comments extends State<Comments> {
  List<Widget> _getItems() {
    List<Card> _cards = [];
    for (int i = 1; 1 <= 50; i++) {
      _cards.add(
        Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            title: Text('Items $i'),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                transitionOnUserGestures: true,
                tag: 'image',
                child: PostImage(
                  pImage: feedPhotos[0],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(),
          ),
        ],
      ),
    );
  }
}
