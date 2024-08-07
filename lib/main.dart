import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practice/firebase_options.dart';
import 'package:firebase_practice/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
