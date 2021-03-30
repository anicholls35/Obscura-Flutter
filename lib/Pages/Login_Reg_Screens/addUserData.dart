import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Global_Componets/AppBar/baseAppBar.dart';
import '../../Global_Componets/Service_Workers/storageWorker.dart';
import '../../constants.dart';
import '../Channel_Select/channelSelect.dart';

class AddUserData extends StatefulWidget {
  @override
  _AddUserData createState() => _AddUserData();
}

class _AddUserData extends State<AddUserData> {
  TextStyle fieldLook = TextStyle(color: Colors.white);
  final fnCntrl = TextEditingController();
  final lnCntrl = TextEditingController();
  File _image;
  final ImagePicker picker = ImagePicker();

  void initState() {
    super.initState();
  }

  void dispose() {
    fnCntrl.dispose();
    lnCntrl.dispose();
    super.dispose();
  }

  Future<void> openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
    }
  }

  Future<void> openGallary() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
    }
  }

  Future<void> createUser() async {
    String fn = fnCntrl.text;
    String ln = lnCntrl.text;
    bool proceed = true;

    if (fn == "") {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Invalid Input"),
              content: Text("Please enter your First Name"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Close"),
                ),
              ],
            );
          });
      return;
    }

    if (ln == "") {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Invalid Input"),
              content: Text("Please enter your Last Name"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Close"),
                ),
              ],
            );
          });
      return;
    }

    if (_image == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("No Profile Picture"),
              content: Text(
                  "Are you sure you don't want to upload a profile picture?"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    proceed = false;
                    Navigator.of(context).pop();
                  },
                  child: Text("No"),
                ),
              ],
            );
          });
    }

    if (proceed) {
      if (_image == null) {
        _image = File("assets/Images/ProfilePictures/blank_profilePic.png");
      }
      //Upload Image
      var upload = await StorageWorker().uploadFile(
          _image, "account_pics", firebaseAuth.currentUser.uid, false);

      CollectionReference users = firebaseDatabase.collection("users");

      users.add({
        "uid": firebaseAuth.currentUser.uid,
        "profile_pic": upload,
        "first_name": fn,
        "last_name": ln,
        "joined": DateTime.now()
      });

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ChannelSelect()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("Create User"),
        appBar: AppBar(),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Create Account"),
        onPressed: () {
          createUser();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: _image == null
                ? Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          color: primaryColour,
                        ),
                        child: ImageButton(
                          heading: "Open Camera",
                          icon: Icons.camera_alt_rounded,
                          onTap: () {
                            openCamera();
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          color: primaryColour,
                        ),
                        child: ImageButton(
                          heading: "Open Gallary",
                          icon: Icons.photo_library_outlined,
                          onTap: () {
                            openGallary();
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        _image = null;
                      });
                    },
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(_image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Align(
                                heightFactor: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    "Redo",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: primaryColour.withAlpha(125),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: fnCntrl,
                    decoration: InputDecoration(
                      hintStyle: fieldLook,
                      labelStyle: fieldLook,
                      hintText: "John",
                      labelText: "First Name",
                    ),
                    style: fieldLook,
                  ),
                  TextField(
                    controller: lnCntrl,
                    decoration: InputDecoration(
                      hintStyle: fieldLook,
                      labelStyle: fieldLook,
                      hintText: "Smith",
                      labelText: "Last Name",
                    ),
                    style: fieldLook,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ImageButton extends StatefulWidget {
  void Function() onTap;
  String heading;
  IconData icon;

  ImageButton({
    Key key,
    this.onTap,
    @required this.heading,
    @required this.icon,
  }) : super(key: key);

  @override
  _ImageButton createState() =>
      _ImageButton(this.onTap, this.heading, this.icon);
}

class _ImageButton extends State<ImageButton> {
  void Function() _onTap;
  String _heading;
  IconData _icon;

  _ImageButton(this._onTap, this._heading, this._icon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Center(
              child: Icon(
                _icon,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100.withAlpha(60),
              ),
              child: Center(
                child: Text(
                  _heading,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
