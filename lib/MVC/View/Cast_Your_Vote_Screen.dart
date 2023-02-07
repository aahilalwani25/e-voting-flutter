import 'package:evoting_application/MVC/Model/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cast_Your_Vote_Screen extends StatefulWidget {
  const Cast_Your_Vote_Screen({super.key});

  @override
  State<Cast_Your_Vote_Screen> createState() => _Cast_Your_Vote_ScreenState();
}

class _Cast_Your_Vote_ScreenState extends State<Cast_Your_Vote_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DarkTheme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Cast Your Vote'),
        ),
        body: Column(
          children: [
            const Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter your block Code'),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter your CNIC'),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter your block Code'),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(onPressed: (){}, child: Text('Let Me in')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}