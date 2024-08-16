// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_practice/firebase%20services/google_services.dart';
//
// class UserServices{
//
//  static UserServices userServices = UserServices._();
//   UserServices._();
//
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//
//   Future<void> addUser() async {
//     CollectionReference user =  firebaseFirestore.collection("User");
//
//     user.doc().set({
//       "name": "Dipali",
//       "email":"dipaligunjal@gmail.com",
//       "phone":"9876543123",
//     });
//   }
// }
