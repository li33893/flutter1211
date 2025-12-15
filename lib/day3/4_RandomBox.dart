import 'package:flutter/material.dart';
import 'dart:math';

// 파란 네모
// 시작 위치: (150, 150)
// 버튼 누르면 랜덤 위치로 이동
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _ran = Random(); // ✅ Random 생성

  Offset position = const Offset(150, 150);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            /// 파란 네모
            Positioned(
              left: position.dx,
              top: position.dy,
              child: GestureDetector(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ),

            /// 랜덤 이동 버튼
            Positioned(
              bottom: 40,
              left: 40,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    position = Offset(
                      _ran.nextInt(301).toDouble(),
                      _ran.nextInt(301).toDouble(),
                    );
                  });
                },
                child: const Text("랜덤 숫자 뽑기"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
