import 'package:flutter/material.dart';

//有蓝色方块,点击蓝色方块可以拉动蓝色方块
//位置是150,150(从 Stack 左边往右 150 px,从 Stack 顶部往下 150 px)
//宽100 长100
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Offset position=Offset(150, 150);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Stack(
          children: [
            Positioned(
              left:position.dx,
              top:position.dy,
              child:GestureDetector(

                // onTap:(){
                //   print("clicked");
                // },
                onPanUpdate:(details){
                  setState(() {
                    position += details.delta;
                  });
                },
                child: Container(
                  width:100,height:100, color:Colors.blue[200]
                ),
              )
            )
          ],
        )
      )
    );
  }
}