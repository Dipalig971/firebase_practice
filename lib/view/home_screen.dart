import 'package:firebase_practice/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    AuthController authController = Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body:  Padding(
        padding:  const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: authController.txtEmail,
              decoration: const InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20,),
             TextField(
               controller: authController.txtPassword,
              decoration: const InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20,),
            OutlinedButton(onPressed: () {

              authController.signUp(authController.txtEmail.text, authController.txtPassword.text);

            }, child: const Text('Create Account'))
          ],
        ),
      ),
    );
  }
}
