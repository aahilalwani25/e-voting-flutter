import 'package:flutter/material.dart';

class ShowAlert {
  String title, description;
  BuildContext context;

  ShowAlert(
      {required this.context, required this.title, required this.description});

  show() {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text(title.toUpperCase()),
            content: Text(description),
            icon: title.toUpperCase() == 'ERROR'
                ? const Icon(
                    Icons.error,
                    color: Colors.red,
                  )
                : const Icon(
                    Icons.check_circle,
                    color: Color.fromARGB(255, 54, 244, 70),
                  ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: (title.toUpperCase()) == 'ERROR'
                            ? Colors.red
                            : const Color.fromARGB(255, 33, 209, 39)),
                  ))
            ],
          );
        });
  }
}
