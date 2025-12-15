import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      home:Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 100.0,//大小
                lineWidth: 10,//线宽
                percent: 0.17,
                center: new Text("17%"),
                animation: true,
                animationDuration: 1200,
                progressColor: Colors.green,
                backgroundColor: Colors.yellow,
              ),
              SizedBox(height:200),
              LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ],

          ),
        )

      )
    );
  }
}