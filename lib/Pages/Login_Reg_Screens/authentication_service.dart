import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "logged-in";
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        return "No account linked to this email";
      } else if (e.code == "wrong-password") {
        return "Incorrect password";
      } else if (email == "") {
        return "email can't be empty";
      } else if (password == "") {
        return "password can't be empty";
      } else {
        return e.message;
      }
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "sign-up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<User> getUser() async {
    return _firebaseAuth.currentUser;
  }

  Future<String> signOut() async {
    String name = _firebaseAuth.currentUser.email;
    _firebaseAuth.signOut();
    return "Signed-out: " + name;
  }
}
