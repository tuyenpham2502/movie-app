
import 'package:firebase_auth/firebase_auth.dart';

class Authentication {

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signUp (String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
      return e.toString();
    }
  }


}