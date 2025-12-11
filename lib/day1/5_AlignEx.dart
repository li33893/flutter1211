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
        appBar: AppBar(
          backgroundColor:Colors.purple[200],
        ),
        drawer:Drawer(),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child:Text("zzz"),
            color:Colors.blue[200],
            margin: EdgeInsets.fromLTRB(20,50,0,0),
            padding: EdgeInsets.all(20),
            width:double.infinity,
            height:200
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      )
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

