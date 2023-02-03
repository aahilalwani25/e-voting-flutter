import 'package:evoting_application/MVC/Controller/Signup_Controller.dart';
import 'package:evoting_application/MVC/View/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../ScreenDimensions.dart';
import '../Model/Gender.dart';
import '../Model/NewUser.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Gender g = Gender.none;
  
  bool active=false;

  TextEditingController cnic= TextEditingController();
  TextEditingController full_name= TextEditingController();
  TextEditingController phone= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  //TextEditingController cnic= TextEditingController();

  String dob=DateTime.now().toString();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Container(
              // width: ScreenDimensions.getWidth(context),
              // height: ScreenDimensions.getHeight(context),
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
                    height: ScreenDimensions.getHeight(context) * 0.28,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/election_commission_of_pakistan_logo.png',
                          cacheWidth: 100,
                          cacheHeight: 150,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),

                  //text box
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        controller: cnic,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'CNIC',
                          fillColor: Colors.white,
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white),
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
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        controller: full_name,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          fillColor: Colors.white,
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        controller: email,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          fillColor: Colors.white,
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Gender: ',
                                style: TextStyle(color: Colors.white)),
                            RadioMenuButton(
                              value: Gender.male,
                              groupValue: g,
                              onChanged: (Gender? value) {
                                setState(() {
                                  g = value!;
                                });
                              },
                              child: const Text('Male',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            RadioMenuButton(
                              value: Gender.female,
                              groupValue: g,
                              onChanged: (Gender? value) {
                                setState(() {
                                  g = value!;
                                });
                              },
                              child: const Text('Female',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        )),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        controller: phone,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Phone',
                          fillColor: Colors.white,
                          prefixIconColor: Colors.white,
                          labelStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.cake,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            dob,
                            style: const TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            onTap: () async{
                              await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2024)
                              ).then((value) => {
                                setState((){
                                  dob= DateFormat('yMMMMd').format(value!);
                                })
                              });

                            },
                            child: const Icon(
                              Icons.calendar_today,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
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

                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.white,
                          value: active,
                          onChanged: (value) {
                            setState(() {
                              active=!value!;
                            });
                          },
                        ),
                        const Text(
                            '''By checking this, you agree the terms and conditions
                            of election commission of Pakistan''',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            //new user initialization
                            //print('sign up');
                            NewUser u=NewUser(
                              gender: g.toString(),
                              CNIC: BigInt.parse(cnic.text),
                              password: password.text,
                              active: active,
                              DOB: dob,
                              full_name: full_name.text,
                              phone: BigInt.parse(phone.text),
                              email: email.text,
                            );

                            SignupController().firebaseSignUp(u, context);
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? ',
                            style: TextStyle(color: Colors.white)),
                        InkWell(
                          child: const Text('Login',
                              style: TextStyle(color: Colors.white)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const LoginScreen()));
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
