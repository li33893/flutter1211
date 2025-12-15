import 'package:flutter/material.dart';


class BPage extends StatelessWidget {
  final String? msg;//加问号:允许null
  const BPage({super.key, this.msg});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title:Text("Bpage")
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg??"전달 받은 값다.")
          ],
        )
      )
    );
  }
}
