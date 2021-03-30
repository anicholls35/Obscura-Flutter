import 'package:cloud_firestore/cloud_firestore.dart';

import '../../constants.dart';
import '../../constants.dart';

Future<String> getFullName() async {
  print("GOT HERE getFullName(): " + firebaseAuth.currentUser.uid);
  DocumentReference currUser =
      firebaseDatabase.collection("users").doc(firebaseAuth.currentUser.uid);

  var firstName = currUser.get().then((value) {
    return value.data()["first_name"];
  });

  var lastName = currUser.get().then((value) {
    return value.data()["last_name"];
  });

  var fullName = firstName.toString() + " " + lastName.toString();

  return fullName;
}
