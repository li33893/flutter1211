import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //late: 我以后会用
  late ConfettiController ctrl;

  @override
  void initState() {
    super.initState();
    ctrl =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ctrl.play();
                },
                child: Text("click!"),
              ),
              ConfettiWidget(
                confettiController: ctrl,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: true,
                numberOfParticles: 200,
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple,
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}