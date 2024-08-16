import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class SignInServices {

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static SignInServices signInServices = SignInServices._();

  SignInServices._();

  Future<String> signInMethod(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return "Successfully Sign in!!!!!!";
    } catch (e) {
      log(e.toString());
      return e.toString();
    }
  }
}