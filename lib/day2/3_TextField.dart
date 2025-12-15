import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _emailCtrl=TextEditingController();
  //写成var email=TextEditingController();也行,就是不够正式

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child:Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller:_emailCtrl,
                  decoration:InputDecoration(
                    labelText:"email",
                    hintText:"ex) 3228302551@qq.com",
                    prefixIcon:Icon(Icons.email),
                    suffixIcon:Icon(Icons.check_circle,color:Colors.green[200]),
                    border:OutlineInputBorder(),
                    //filled在true的情况下才能填充
                    filled:true,
                    fillColor: Colors.grey[100],
                    // enabled:false

                  )
                ),
                SizedBox(height:10,),
                ElevatedButton(
                    onPressed: (){
                      print("inputted value:${_emailCtrl.text}");
                    },
                    child: Text("가입"),
                )
              ],
            ),
          )
        )
      )
    );
  }
}