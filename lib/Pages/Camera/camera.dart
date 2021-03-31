import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/NavBar/baseNavBar.dart';
import 'package:obscura/Global_Componets/Service_Workers/storageWorker.dart';

import '../../constants.dart';

class Camera extends StatefulWidget {
  @override
  _Camera createState() => _Camera();
}

class _Camera extends State<Camera> {
  final int _pageIndex = 2;
  final desController = TextEditingController();

  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  Future<void> openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      Navigator.pop(context);
    }
  }

  void dispose() {
    desController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: openCamera(),
        builder: (context, snapshot) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;
          return Scaffold(
            appBar: BaseAppBar(
              title: Text("UPLOAD"),
              appBar: AppBar(),
              activeUserPic: users[0].profilePicture,
              backIcon: true,
            ),
            bottomNavigationBar: BaseNavBar(
              index: _pageIndex,
            ),
            body: body(height, width),
            floatingActionButton: Transform.scale(
              scale: 1.23,
              child: FloatingActionButton(
                child: Icon(
                  Icons.cloud_upload_rounded,
                  size: 35.0,
                ),
                onPressed: () async {
                  print("camera.dart: uid --> ${firebaseAuth.currentUser.uid}");
                  print("Attempting Upload...");
                  var upload = await StorageWorker().uploadFile(
                      _image, "feed_pics", firebaseAuth.currentUser.uid, true);

                  print("Download link of: $upload");

                  //add data to database
                  CollectionReference posts =
                      firebaseDatabase.collection("posts");
                  posts.add({
                    "image": upload,
                    "description": desController.text,
                    "timestamp": DateTime.now(),
                    "uploader": firebaseAuth.currentUser.uid,
                  });

                  Navigator.pop(context);
                },
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          );
        },
      );

  Column body(double height, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Container(
            child: _image == null
                ? Container()
                : Image(
                    fit: BoxFit.fitHeight,
                    image: FileImage(_image),
                    height: height * 0.5,
                  ),
            width: width,
            height: height * 0.40,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextField(
                textInputAction: TextInputAction.newline,
                autofocus: true,
                toolbarOptions: ToolbarOptions(
                  cut: true,
                  copy: true,
                  selectAll: true,
                  paste: true,
                ),
                controller: desController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                    ),
                    hintText: 'Description',
                    hintStyle: new TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                maxLines: 10,
                maxLength: 255,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
