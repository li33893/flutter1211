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
  List<String> checkedList = [];
  List<String> imgList = [
    "java.jpg",
    "oracle.jpg",
    "html.jpg"
  ];

  void listChanged(String subject, bool isChecked) {
    setState(() {
      if (isChecked) {
        checkedList.add(subject);
      } else {
        checkedList.remove(subject);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ListTile(
              title: Text("java"),
              leading: Checkbox(
                //value:true的时候被选中,false的时候没被选中
                value: checkedList.contains(imgList[0]),//返回boolean
                onChanged: (value) {
                  listChanged(imgList[0], value!);
                },
              ),
              onTap: () {
                bool nowChecked = !checkedList.contains(imgList[0]);
                listChanged(imgList[0], nowChecked);
              },
            ),
            ListTile(
              title: Text("oracle"),
              leading: Checkbox(
                value: checkedList.contains(imgList[1]),
                onChanged: (value) {
                  listChanged(imgList[1], value!);
                },
              ),
              onTap: () {
                bool nowChecked = !checkedList.contains(imgList[1]);
                listChanged(imgList[1], nowChecked);
              },
            ),
            ListTile(
              title: Text("html"),
              leading: Checkbox(
                value: checkedList.contains(imgList[2]),
                onChanged: (value) {
                  listChanged(imgList[2], value!);
                },
              ),
              onTap: () {
                bool nowChecked = !checkedList.contains(imgList[2]);
                listChanged(imgList[2], nowChecked);
              },
            ),
            //
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,  // 一行 3 个
                    crossAxisSpacing: 10, // 格子之间横向间距（可选）
                    mainAxisSpacing: 10,  // 纵向间距（可选）
                  ),
                  itemCount:checkedList.length,
                  itemBuilder: (context,index){
                    return Container(
                      child:Center(child: Image.asset("${checkedList[index]}", width: 150, height: 150,),),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
