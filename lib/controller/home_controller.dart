import 'package:firebase_practice/firebase%20services/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  Future<void> signUp(String email,String password) async {

    await AuthServices.authServices.createAccountUsingEmail(email,password);
  }

}