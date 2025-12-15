import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content:Text("hello!!"),
                    action:SnackBarAction(
                      label:"close",
                      onPressed:(){

                      }

                    ),
                    duration:Duration(seconds: 3),
                ),

              );
            },
            child: const Text("클릭!"),
          ),
        ),
      ),
    );
  }
}

class MySnackBar {
  static void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Hello Snackbar!")),
    );
  }
}
