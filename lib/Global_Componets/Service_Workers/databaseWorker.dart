import 'package:cloud_firestore/cloud_firestore.dart';

import '../../constants.dart';

class DatabaseWorker {
  Stream<QuerySnapshot> get postData {
    return firebaseDatabase.collection("posts").snapshots();
  }

  Future<String> getImageUrl() async {
    String uid = firebaseAuth.currentUser.uid;

    await firebaseDatabase
        .collection("users")
        .where("uid", isEqualTo: uid)
        .get()
        .then((value) {
      value.docs.forEach((doc) {
        return doc.data()["profile_pic"];
      });
    });
  }
}
