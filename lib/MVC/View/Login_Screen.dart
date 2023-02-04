import 'package:evoting_application/MVC/Controller/Login_Controller.dart';
import 'package:evoting_application/MVC/Model/NewUser.dart';
import 'package:evoting_application/MVC/View/Dashboard_Screen.dart';
import 'package:evoting_application/MVC/View/showAlert.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

import '../../ScreenDimensions.dart';
import 'Signup_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  NewUser? user;

  TextEditingController cnic= TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
   if(LocalStorage('evoting_app').getItem('cnic')??true) {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Dashboard()));
   }
   return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: ScreenDimensions.getWidth(context),
                  height: ScreenDimensions.getHeight(context),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      //darken the image
                      colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken),
                      image: AssetImage(
                        'assets/images/background_image.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        width: ScreenDimensions.getWidth(context),
                        height: ScreenDimensions.getHeight(context)*0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/election_commission_of_pakistan_logo.png',
                              cacheWidth: 200,
                              cacheHeight: 250,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('LOGIN',
                                style: TextStyle(
                                  color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),

                      //text box
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextField(
                            controller: cnic,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              labelText: 'CNIC',
                              fillColor: Colors.white,
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextField(
                            controller: pass,
                            style: const TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              fillColor: Colors.white,
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: () {
                              //login code
                              LoginController.getLogin(cnic.text, pass.text, context);
                              //LoginController.getLogin(cnic.text, pass.text);
                              
                            }, child: const Text('LOGIN', style: TextStyle(fontSize: 20),),

                          )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account? ', style: TextStyle(color: Colors.white)),
                            InkWell(
                              child: const Text('SIGN UP', style: TextStyle(color: Colors.white)),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (builder)=>const SignupScreen()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              ]),
        ),
      ),
    );
  }
}
