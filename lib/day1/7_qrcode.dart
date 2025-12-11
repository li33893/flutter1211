import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//https://pub.dev/packages/qr_flutter
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImageView(
            data: "https://google.com", // 你想生成二维码的内容
            version: QrVersions.auto,
            size: 200.0,
          ),
        ),
      ),
    );
  }
}
