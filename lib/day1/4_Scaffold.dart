import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue[200],
          title: Text("상단 영역"),
        ),
        drawer:Drawer(

        ),
        body:ListView(
          children:[
            ListTile(
              leading:Image.asset('xilin.jpg',width:60,height:60,),
              title: Text("꽤 괜찮은 자전거", style:TextStyle(fontWeight:FontWeight.bold)),
              subtitle:Text("150,000원, 인천 부평동"),
              trailing:IconButton(onPressed:(){}, icon:Icon(Icons.edit)),
              onTap:(){
                print("제품클릭했음!");
              }
            ),
            Divider(height:1, color:Colors.grey),
            ListTile(
                leading:Image.asset('xilin.jpg',width:60,height:60,),
                title: Text("아주 좋은 노트북", style:TextStyle(fontWeight:FontWeight.bold)),
                subtitle:Text("150,000원, 인천 부평동"),
                trailing:IconButton(onPressed:(){}, icon:Icon(Icons.edit)),
                onTap:(){
                  print("제품클릭했음!");
                }
            ),
          ]
        ),
        bottomNavigationBar:BottomAppBar(
          child:Row(
            children:[
              IconButton(onPressed:(){}, icon: Icon(Icons.domain),iconSize:40,),
              IconButton(onPressed:(){}, icon: Icon(Icons.home),iconSize:40,),
              IconButton(onPressed:(){}, icon: Icon(Icons.backspace),iconSize:40,),
            ]
          ),
        ),
      )
    );
  }
}