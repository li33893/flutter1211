import 'package:flutter/material.dart';
import 'dart:math';

//点击按钮随机出现0-9的数字
//格式:上面是text下面是按钮,在屏幕中央出现
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _ran=Random();
  int ranNum=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("렌덤 숫자:${ranNum}"),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      ranNum=_ran.nextInt(10);//0-9
                      // _ran.nextDouble();//0.0-1.0
                      // _ran.nextDouble()*9+1;//0-10

                    });

                  },
                  child: Text("렌덤 숫자 뽑기")
              )
            ],
          ),
        )
      )
    );
  }
}