import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SmsController{

  Future<void> _sendSMS(List<String> recipients, Map<String,dynamic> message) async {

    String msg='Block Code: ${message['block_code']} \n Area: ${message['election_area']} \n ';

    await sendSMS(message: msg, recipients: recipients)
    .then((value) => {
      Fluttertoast.showToast(msg: "You'll soon receive message", textColor: Colors.white, backgroundColor: Colors.green)
    });
  }
}