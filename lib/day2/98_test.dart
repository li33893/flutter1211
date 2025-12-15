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
  var num=0;
  var _txt="Flutter";
  var _color=Colors.blue[200];
  var _align=Alignment.center;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Align(
        alignment:_align,
        child: ElevatedButton(
              onPressed: () {
                setState(() {
                  num++;
                  if(num%2==0){
                    _color=Colors.blue[200];
                    _align=Alignment.center;
                    _txt="Flutter";
                  }else{
                    _color=Colors.green[200];
                    _align=Alignment.topCenter;
                    _txt="is fun";
                  }
                });
              },
              child: Text(_txt),
              style:ElevatedButton.styleFrom(
                backgroundColor:_color
                // shape:RoundedRectangleBorder(
                //   borderRadius:BorderRadius.zero
                // )
              )
          ),
      ),
    );
  }
}