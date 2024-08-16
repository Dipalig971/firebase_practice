import 'package:firebase_practice/firebase%20services/sign_in_services.dart';
import 'package:firebase_practice/view/new_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {

                  },
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Let’s Sign you in.",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "You’ve been missed!",
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'UserName or Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: authController.txtEmail,
                  decoration: InputDecoration(
                      hintText: 'Enter Username or Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0)
                      )
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: Obx(() {
              //     return TextField(
              //       controller: authController.txtEmail,
              //       decoration: InputDecoration(
              //         hintText: 'Enter Username or Email',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(12.0),
              //         ),
              //       ),
              //     );
              //   }),
              // ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: authController.txtPassword,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20),
              //   child: Obx(() {
              //     return TextField(
              //       controller: authController.txtPassword,
              //       decoration: InputDecoration(
              //         hintText: 'Enter Password',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(12.0),
              //         ),
              //         suffixIcon: const Icon(Icons.visibility_off),
              //       ),
              //     );
              //   }),
              // ),
              const SizedBox(height: 20),
              // const Center(
              //   child: Text(
              //     "or",
              //     style: TextStyle(fontSize: 18),
              //   ),
              // ),
              // const SizedBox(height: 20),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child: Image(image: AssetImage('assets/image/google.png'))),
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child:
              //         Image(image: AssetImage('assets/image/linkdin.png'))),
              //     SizedBox(
              //         height: 50,
              //         width: 50,
              //         child:
              //         Image(image: AssetImage('assets/image/facebook.png')))
              //   ],
              // ),
              // const SizedBox(height: 20),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: const Center(
                  child: Text(
                    "Don't have an account ? Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () async {
                   String status = await SignInServices.signInServices.signInMethod(
                        authController.txtEmail.text,
                        authController.txtPassword.text);
                   Fluttertoast.showToast(msg: status);

                   Get.to(const NewScreen());

                  },
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
