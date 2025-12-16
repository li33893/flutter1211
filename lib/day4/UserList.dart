import 'package:flutter/material.dart';
import 'db.dart';
import 'UserView.dart';
import 'UserEdit.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Map<String, dynamic>> list = [];

  Future<void> _selectUserList() async {
    var userList=await DB.selectUser();
    setState(() {
      list=userList;
    });
  }

  Future<void> _deleteUser(int id) async {
    var db=await DB.deleteUser(id);
    await _selectUserList();
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title : Text("사용자 목록")),
        body : ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            var user = list[index];
            return ListTile(
              onTap: () async {
                final flg = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserView(userId: user["userId"]),
                  ),
                );

                if (flg == true) {
                  _selectUserList();
                }
              },
              title : Text("아이디 : ${user["userId"]}, 이름 : ${user["name"]}"),
              subtitle: Text("나이 : ${user["age"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title : Text("삭제"),
                              content: Text("${user["name"]}님을 정말 삭제 하실거?"),
                              actions: [
                                TextButton(
                                    onPressed: (){
                                      _deleteUser(user["userId"]);
                                      Navigator.of(context).pop();

                                    },
                                    child: Text("삭제")
                                ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("취소")
                                ),
                                IconButton(
                                    onPressed: () async {
                                      bool flg=await Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => UserEdit(userId:user["userId"]),)
                                      );
                                      if(flg){
                                        _selectUserList();
                                      }
                                    },
                                    icon: Icon(Icons.edit)
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.delete)
                  )
                ],
              ),

            );

          },
        )
    );
  }
}