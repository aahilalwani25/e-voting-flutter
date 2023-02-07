import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import '../View/Admin_Dashboard_Screen.dart';
import '../View/Dashboard_Screen.dart';
import '../View/showAlert.dart';

class LoginController {
  static Future<void> loginAsAdmin(
      String cnic, String password, BuildContext context) async {
    Map<String, dynamic> data;
    FirebaseFirestore.instance
        .collection('Users')
        .doc(cnic)
        .get()
        .then((value) {
      data = value.data() as Map<String, dynamic>;

      //  if(data['password']==password && data['CNIC']==cnic){
      //   Navigator.push(context,MaterialPageRoute(
      //    builder: (builder) => const AdminDashboard()));
      //  }else
      if (data['password'] == password) {
        //for users
        //LocalStorage('evoting_app').setItem('cnic', cnic);
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => const Dashboard()));
      } else {
        ShowAlert(
                context: context,
                title: 'ERROR',
                description: 'Invalid Credentials')
            .show();
      }
    }).onError((error, stackTrace) {
      ShowAlert(
              context: context,
              title: 'ERROR',
              description: 'Invalid Credentials')
          .show();
    });
  }

  static Future<void> getLogin(
      String cnic, String password, BuildContext context) async {
    Map<String, dynamic> data;
    FirebaseFirestore.instance
        .collection('Users')
        .doc(cnic)
        .get()
        .then((value) {
      data = value.data() as Map<String, dynamic>;

      //  if(data['password']==password && data['CNIC']==cnic){
      //   Navigator.push(context,MaterialPageRoute(
      //    builder: (builder) => const AdminDashboard()));
      //  }else
      if (data['password'] == password) {
        //for users
        //LocalStorage('evoting_app').setItem('cnic', cnic);
        
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => const Dashboard()));
      } else {
        ShowAlert(
                context: context,
                title: 'ERROR',
                description: 'Invalid Credentials')
            .show();
      }
    }).onError((error, stackTrace) {
      ShowAlert(
              context: context,
              title: 'ERROR',
              description: 'Invalid Credentials')
          .show();
    });
  }
}
