import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class StorageWorker {
  final _storageInstance = FirebaseStorage.instance;

  /**
   * Upload a file to storage name the current date + UID
   * Returns an active download URL
   */
  Future<String> uploadFile(File file, String folder, String uid) async {
    //Storage folder path
    var snapshot = await _storageInstance
        .ref()
        .child("$folder/${DateTime.now()}_$uid")
        .putFile(file);

    var downloadURL = await snapshot.ref.getDownloadURL();

    return downloadURL;
  }
}
