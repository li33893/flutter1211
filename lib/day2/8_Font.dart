import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child:Text(
            'This is Google Fonts',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
            ),
          ),
        ),
      ),
    );
  }
}
