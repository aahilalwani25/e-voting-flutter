import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

import 'MVC/View/Login_Screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight=double.parse(MediaQuery.of(context).size.height.toString());
    double screenWidth=double.parse(MediaQuery.of(context).size.height.toString());


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screenWidth,
              height: screenHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/election_commission_of_pakistan_logo.png',
                    cacheWidth: 200,cacheHeight: 250,
                    ),
                  CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 5,
                  )
                ],
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  //darken the image
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                  image: AssetImage('assets/images/background_image.png',),
                  fit: BoxFit.cover,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
