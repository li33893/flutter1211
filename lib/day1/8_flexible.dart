import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            // 左边白色区域
            Flexible(
              flex: 1,
              child: Container(color: Colors.white),
            ),

            // 中间的 Column（3 个黑色块）
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Flexible(flex: 1, child: Container(color: Colors.grey[200])),
                  Flexible(flex: 1, child: Container(color: Colors.grey[50])),
                  Flexible(flex: 1, child: Container(color: Colors.black)),
                ],
              ),
            ),

            // 右边黄色区域
            Flexible(
              flex: 1,
              child: Container(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}

// //静态
// class  extends StatelessWidget {
//   const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
// //动态(因为不知道什么时候会启动新的,随时待机)
// class  extends StatefulWidget {
//   const ({super.key});
//
//   @override
//   State<> createState() => _State();
// }
//
// class _State extends State<> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

