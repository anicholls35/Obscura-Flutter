import 'dart:math';

import 'package:flutter/material.dart';

//This file holds a lists of fake data
//Volume = 10

//TODO: Add fake data

//Feed Photos 0-4
const List<NetworkImage> feedPhotos = [
  NetworkImage(
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*'),
  NetworkImage(
      'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
  NetworkImage(url)
  NetworkImage(
      'https://cdn.cultbeauty.com/resized/600/slots-img/cat/category_makeup_2_840x400-1nea3.jpg'),
  NetworkImage('https://images.immediate.co.uk/production/volatile/sites/4/2013/04/GettyImages-640318118-c83a508.jpg?quality=90&resize=940%2C400'),
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
