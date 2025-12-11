import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:3,
        child:Scaffold(
          appBar:AppBar(
            title:Text("appbar"),
            bottom: TabBar(
                tabs:[
                  Tab(icon:Icon(Icons.home),text:"home",),
                  Tab(icon:Icon(Icons.star,color:Colors.yellow),text:"star"),
                  Tab(icon:Icon(Icons.person),text:"profile",)
                ]
            )
          ),
          body: TabBarView(
           children: [
             Center(
               child: Text("home!"),
             ),
             Center(
               child: Text("collection!"),
             ),
             Center(
               child: Text("profile!"),
             ),
           ],
          )
        )
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

