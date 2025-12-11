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
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,  // 一行 3 个
              crossAxisSpacing: 10, // 格子之间横向间距（可选）
              mainAxisSpacing: 10,  // 纵向间距（可选）
            ),
            itemCount:10,
            itemBuilder: (context,index){
              return Container(
                color:Colors.blue[100*((index%9)+1)],
                child:Center(child: Text("${index+1}")),
              );
            }
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

