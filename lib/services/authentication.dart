import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_app/untils/snack_bar.dart';

class FireBaseAuthMethod {
  final FirebaseAuth _auth;
  FireBaseAuthMethod(this._auth);

  User? get user => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();
  // sign up
  Future<void> signUp({required String email, required String password, required BuildContext context}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await sendEmailVerification(context);
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'weak-password') {
          print("The password provided is too weak");
        } else if (e.code == 'email-already-in-use') {
          print("The account already exists for that email");
        }
        showSnackBar(context, e.message!);
      } else {
        print("An error occurred: $e");
      }
    }
  }



  //sign in
  Future<void> signIn({required String email,required String password, required BuildContext context}) async {
    await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }



  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email verification sent!');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Display error message
    }
  }


}
