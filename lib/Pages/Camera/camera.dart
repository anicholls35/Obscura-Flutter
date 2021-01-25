import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:obscura/Global_Componets/NavBar/baseNavBar.dart';

class Camera extends StatefulWidget {
  @override
  _Camera createState() => _Camera();
}

class _Camera extends State<Camera> {
  final int _pageIndex = 2;

  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  Future openCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: openCamera(),
        builder: (context, snapshot) {
          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: BaseNavBar(
                index: _pageIndex,
              ),
              body: Stack(
                children: [
                  Center(
                    child: Container(
                      child: _image == null ? Container() : Image.file(_image),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}
