import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        // child: ElevatedButton(
        //   onPressed: () {
        //     print("버튼 클릭 됨!");
        //   },
        //   child: Text("첫번째 버튼!"),
        // ),

        //widget的child只能有一个
        child: IconButton(
            onPressed:(){
              print("버튼 클릭 됨!");
            },
            icon: Icon(Icons.home)
        ),
      ),
    );
  }
}