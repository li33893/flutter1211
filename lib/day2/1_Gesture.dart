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
  var _color=Colors.white;
  var _num=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:GestureDetector(

          onTap:(){

            setState(() {
              _num++;
              if(_num%2==0){
                _color=Colors.black;
              }else{
                _color=Colors.white;
              }

            });

          },
          child: Container(
            child:Center(
                child:Text("클릭!")
            ),
            color:_color,

          ),
        )
      )
    );
  }
}