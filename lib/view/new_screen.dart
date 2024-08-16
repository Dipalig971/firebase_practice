import 'package:flutter/material.dart';

import '../firebase services/user_services.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      // floatingActionButton:  FloatingActionButton(
      //   onPressed: () {
      //     UserServices.userServices.addUser();
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}


