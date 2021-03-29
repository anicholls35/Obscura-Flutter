import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

const Color primaryColour = Color(0xff2b2b2b);
const Color accentColour = Color(0xffd0005d);
const Color secondryColour = Color(0xff2dfdcf);

final storageInstance = FirebaseStorage.instance;
final firebaseAuth = FirebaseAuth.instance;
final firebaseDatabase = FirebaseFirestore.instance;
