import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/constants.dart';

class Comments extends StatefulWidget {
  final NetworkImage image;
  final int index;

  const Comments({Key key, this.image, this.index}) : super(key: key);

  _Comments createState() => _Comments(image, index);
}

//TODO: Impliment Lazy Loading
//TODO: Impliment Gesture detecction


class _Comments extends State<Comments> {
  NetworkImage _image;

  _Comments(this._image);

  List<Widget> _getItems() {
    List<Container> _commentCards = [];
    for (int i = 0; i < posts[0].comments; i++) {
      _commentCards.add(Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2.0,
              color: Color(0xff424242),
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                border: Border.all(color: accentColour),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: posts[0].uploader.profilePicture,
                ),
              ),
            ),
            Flexible(child: genComments()),
          ],
        ),
      ));
    }

    return _commentCards;
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
