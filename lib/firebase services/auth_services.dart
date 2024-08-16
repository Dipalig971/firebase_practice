import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AuthServices {

  static AuthServices authServices = AuthServices();

 final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAccountUsingEmail(String email,String password) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    print(userCredential.user!.email);
  }

  Future<void> signOutMethod() async {
    await auth.signOut();
    User? user = auth.currentUser;
    if (user == null) {
      Get.back();
    }
  }
}

