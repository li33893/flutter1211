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
  var num=0;
  var _color=Colors.purple[200];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home:scaffold
      home: Scaffold(
        //(容器)appbar:紫色部分
        appBar: AppBar(
          //title:text
          title: Text('숫자 증가'),
          //容器属性
          toolbarHeight: 60,
          backgroundColor: Colors.purple[200],
        ),

        //(容器)body:Container(child:Column)
        //为什么多加一个Cotainer:因为Column是布局控件,不支持更改样式等属性
        body: Container(
          child: Column(
            //(容器)Column(children[Expanded(数字显示区域),Align])
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("버튼 누르면 숫자 증가"),
                      Text(num.toString()),
                    ],
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                    },
                    child: Text("+"),
                    style:ElevatedButton.styleFrom(
                      backgroundColor:num%2==0?Colors.purple[200]:Colors.blue[200],
                      // shape:RoundedRectangleBorder(
                      //   borderRadius:BorderRadius.zero
                      // )
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}