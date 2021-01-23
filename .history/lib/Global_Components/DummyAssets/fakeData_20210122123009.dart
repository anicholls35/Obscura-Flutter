import 'dart:math';

import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/postMetaData.dart';
import 'package:obscura/Global_Components/DummyAssets/userAccount.dart';

//Profile Pictures
const List<NetworkImage> accountPhotos = [
  NetworkImage(
      'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg')
];

//Accounts
final List<UserAccount> users = [
  UserAccount(userName: 'Adam Nicholls'),
  UserAccount(userName: 'Peter Mathie'),
  UserAccount(userName: 'Alex Debruin'),
];

//Posts
final List<PostMetaData> posts = [
  
],

getComments() {
  var rnd = new Random();
  return rnd.nextInt(1000);
}

getRating() {
  var rnd = new Random();
  double mod = pow(10.0, 1);
  return ((((rnd.nextDouble() * 10) * mod).round().toDouble() / mod) / 2);
}