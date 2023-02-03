import 'package:evoting_application/MVC/Model/NewUser.dart';
import 'package:evoting_application/MVC/View/showAlert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignupController {

  final firebaseInstance= FirebaseFirestore.instance
        .collection('Users');

  calculateAge(DateTime dob) {}

  // Future<bool> getPhone(Map<String, dynamic> userData, BuildContext context) {
  //   //Future<QuerySnapshot<Map<String, dynamic>>> snapshot = firebaseInstance.where('phone',isEqualTo: userData['phone']).get();

  //   FirebaseAuth.instance.signInWithPhoneNumber()
  // }

  //check if cnic (i.e documentID) exists or not
  Future<bool> getCNIC(Map<String, dynamic> userData, BuildContext context)async {

    DocumentSnapshot<Map<String, dynamic>> snapshot= await firebaseInstance.doc(userData['CNIC']).get();

    return snapshot.exists;
  }

  firebaseSignUp(NewUser user, BuildContext context) async {
    Map<String, dynamic> userData = {
      'CNIC': user.CNIC.toString(),
      'full_name': user.full_name,
      'email': user.email,
      'gender': user.gender,
      'phone': user.phone.toString(),
      'dob': user.DOB,
      'password': user.password,
    };

    // ignore: use_build_context_synchronously
    if (await getCNIC(userData, context)) {
      // ignore: use_build_context_synchronously
      ShowAlert(
              context: context,
              description: 'CNIC already registered',
              title: 'ERROR')
          .show();
    } else {
     firebaseInstance
          .doc(userData['CNIC'])
          .set(userData)
          .then((value) => {
                ShowAlert(
                        context: context,
                        description: 'Successfully registered!',
                        title: 'SUCCESS')
                    .show()
              })
          .onError((error, stackTrace) => {
                ShowAlert(
                        context: context, description: '$error', title: 'ERROR')
                    .show()
              });
    }
  }
}
