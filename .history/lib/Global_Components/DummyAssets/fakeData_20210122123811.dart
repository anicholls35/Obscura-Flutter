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
  PostMetaData(
    uploader: users[0],
    geoLocation: 'Edinburgh, UK',
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1611224997828-1a7bf247d2e0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "Glassgow, Uk",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1611182085226-9fdc2357c029?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1697&q=80'),
  ),
  PostMetaData(
    uploader: users[1],
    geoLocation: "Manchester, UK",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1591088398332-8a7791972843?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80'),
  ),
  PostMetaData(
    uploader: users[0],
    geoLocation: "Carlisle, UK",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1611243410067-275e75714dd1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80'),
  ),
  PostMetaData(
    uploader: users[1],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
  PostMetaData(
    uploader: users[2],
    geoLocation: "New York, USA",
    postImage: NetworkImage(
        'https://images.unsplash.com/photo-1610847034016-49565e0c068a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80'),
  ),
];

getComments() {
  var rnd = new Random();
  return rnd.nextInt(1000);
}

getRating() {
  var rnd = new Random();
  double mod = pow(10.0, 1);
  return ((((rnd.nextDouble() * 10) * mod).round().toDouble() / mod) / 2);
}