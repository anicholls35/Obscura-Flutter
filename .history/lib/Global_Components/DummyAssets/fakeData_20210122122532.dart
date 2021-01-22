import 'dart:math';

import 'package:flutter/material.dart';
import 'package:obscura/Global_Components/DummyAssets/postMetaData.dart';

//This file holds a lists of fake data
//Volume = 10

//Feed Photos 0-4
const List<PostMetaData> feedPhotos = [
  
];

//Profile Pictures
const List<NetworkImage> accountPhotos = [
  NetworkImage(
      'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg')
];

//Geo-Location
const List<String> geoLocations = ['Edinburgh, UK'];

//Account Names
const List<String> accountNames = ['Adam Nicholls'];

getComments() {
  var rnd = new Random();
  return rnd.nextInt(1000);
}

getRating() {
  var rnd = new Random();
  double mod = pow(10.0, 1);
  return ((((rnd.nextDouble() * 10) * mod).round().toDouble() / mod) / 2);
}
