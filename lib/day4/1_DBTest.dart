import 'package:flutter/material.dart';
import 'db.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await DB.insertData("hong", 30, 170.5);
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(
                    //     content:Text("saved!!!"),
                    //   ),
                    //
                    // );
                  },
                  child:Text("Insert button 1")
              ),
              ElevatedButton(
                  onPressed: () async {
                    List<Map<String, dynamic>> list=[];
                    list= await DB.getData();
                    print(list);
                  },
                  child:Text("Select button 2")
              ),
              ElevatedButton(
                  onPressed: () async {
                    var cnt=0;
                    cnt=await DB.updateData(2,"li",34);
                  },
                  child:Text("Update button 3")
              ),
              ElevatedButton(
                  onPressed: () async {
                    var cnt=0;
                    cnt=await DB.deleteData(3);
                  },
                  child:Text("delete button 3")
              )
            ],
          ),
        )
      )
    );
  }
}