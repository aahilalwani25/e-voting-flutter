import 'package:evoting_application/MVC/View/Dashboard_Screen.dart';
import 'package:evoting_application/MVC/Model/Theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Model/Save.dart';

class RequestPollScreen extends StatefulWidget {
  const RequestPollScreen({super.key});

  @override
  State<RequestPollScreen> createState() => _RequestPollScreenState();
}

class _RequestPollScreenState extends State<RequestPollScreen> {
  TextEditingController cnic = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: DarkTheme.getTheme(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Request Poll'),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Steps to request poll'),
                        Text(
                            '1. Enter CNIC and then click on REQUEST button. '),
                        Text(
                            '2. You\'ll soon receive a code message on the SMS on the phone \t\tnumber registered with this CNIC'),
                        Text(
                            '3. After receiving this, you will enter this code when yo will cast it. ')
                      ],
                    )),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                    controller: cnic,
                    //style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'CNIC',
                      fillColor: Colors.grey,
                      prefixIconColor: Colors.grey,
                      labelStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.credit_card_outlined),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ElevatedButton(
                    onPressed: () {
                      //toast message that your request is sent. You'll soon receive
                      //poll station message
                      Save save= Save();
                      //save.initializeState();
                      save.getString("cnic")
                      .then((value) => {
                        print(value),
                            if (value != cnic.text)
                              {
                                Fluttertoast.showToast(
                                  msg:
                                      "CNIC does match with your logged in account",
                                  gravity: ToastGravity.BOTTOM,
                                  toastLength: Toast.LENGTH_LONG,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.red,
                                  timeInSecForIosWeb: 6,
                                )
                              }
                            else
                              {
                                Fluttertoast.showToast(
                                  msg:
                                      "You'll soon receive an SMS message about the polling station details",
                                  gravity: ToastGravity.BOTTOM,
                                  toastLength: Toast.LENGTH_LONG,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.green,
                                  timeInSecForIosWeb: 6,
                                ),
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            const Dashboard()))
                              }
                          });
                    },
                    child: const Text('REQUEST')),
              ),
            ],
          ),
        ));
  }
}
