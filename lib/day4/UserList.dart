import 'package:flutter/material.dart';
import 'UserEdit.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    List <String> idList = ["2", "3", "4"];
    List <String> nameList=["123","z","test"];
    List <int> ageList=[123,12,12];
    return Scaffold(  // 删除 MaterialApp
        appBar: AppBar(
          title:Text("사용자 목록"),
        ),
        body:ListView.builder(
            itemCount: idList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("아이디:${idList[index]}, 이름:${nameList[index]}"),  // 修复：显示 nameList
                subtitle:Text("나이:${ageList[index]}"),
                trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => UserEdit(
                                    name: "${nameList[index]}",
                                    age: "${ageList[index]}"
                                )
                            )
                        );

                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.delete))
                    ]
                ),
                onTap: () {},
              );
            }
        )
    );
  }
}