import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {

  static AuthServices authServices = AuthServices();

 final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAccountUsingEmail(String email,String password) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    print(userCredential.user!.email);
  }
}
