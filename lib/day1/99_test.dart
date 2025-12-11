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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("버튼 1")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 70, color: Colors.yellow,),
                Icon(Icons.heart_broken_outlined, size: 70, color: Colors.green,),
                Icon(Icons.star, size: 70, color: Colors.blue,),
              ],
            ),
            Image.asset("yu2.jpg", width: 60, height: 60,)
          ],
        ),
      ),
    );
  }
}
