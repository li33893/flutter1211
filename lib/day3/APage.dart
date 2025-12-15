import 'package:flutter/material.dart';
import 'BPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:APage(),
    );
  }
}

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title:Text("Apage")
      ),
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BPage()
                      )
                    );

                  },
                  child: Text("값 없이 이동")
              ),
              SizedBox(height:20),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BPage(msg:"A에서 넘긴 값")
                        )
                    );

                  },
                  child: Text("값을 넣어서 이동")
              )
            ],
          )
      ),
    );
  }
}
