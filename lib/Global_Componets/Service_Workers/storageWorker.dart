import 'dart:io';

import '../../constants.dart';

class StorageWorker {
  /**
   * Upload a file to storage name the current date + UID
   * Returns an active download URL
   */
  Future<String> uploadFile(
      File file, String folder, String uid, bool dateTime) async {
    //Storage folder path
    var snapshot = await storageInstance
        .ref()
        .child("$folder/${dateTime ? DateTime.now() : ""}_$uid")
        .putFile(file);

    var downloadURL = await snapshot.ref.getDownloadURL();

    return downloadURL;
  }
}
