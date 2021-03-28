import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/AppBar/baseAppBar.dart';
import 'package:obscura/Global_Componets/Dummy_Assets/fakeData.dart';
import 'package:obscura/Global_Componets/NavBar/baseNavBar.dart';
import 'package:obscura/Pages/Login_Reg_Screens/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as path;

class Camera extends StatefulWidget {
  @override
  _Camera createState() => _Camera();
}

class _Camera extends State<Camera> {
  final int _pageIndex = 2;

  File _image;
  final picker = ImagePicker();
  String userID;
  DocumentReference userPosts;
  FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    String userID = "";
    context.read<AuthenticationService>().getUser().then((user) {
      userID = user.uid;
    });

    userPosts = _firestore.collection("users/"+userID+"/posts").doc();

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

  final desController = TextEditingController();


  void dispose() {
    desController.dispose();
    super.dispose();
  }



  Future<String> uploadImage(File img) async {
    Reference storageRef = _storage.ref().child('$userPosts/${path.basename(img.path)}');
    StorageUploadTask

    return "";
  }

  Future<void> saveImage(File img, DocumentReference ref) async {

    String imgURL = await uploadImage(img);
    ref.update({"image": FieldValue.arrayUnion([imgURL])});
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
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          );
        },
      );

  Column body(double height, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Flexible(
                child: Container(
                    child: _image == null ? Container() : Image(
                      fit: BoxFit.fitHeight,
                      image: FileImage(_image),
                      height: height*0.5,),
                  width: width,
                  height: height*0.40,
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
                  borderSide: BorderSide(color: Colors.white, style: BorderStyle.solid)
                ),
                hintText: 'Description',
                hintStyle: new TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
              ),
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
