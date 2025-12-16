import 'package:flutter/material.dart';
import 'db.dart';


class UserEdit extends StatefulWidget {
  final int? userId;
  UserEdit({super.key, this.userId});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();

  Future<void> _selectUser(int userId) async {//底下那行写直接写widget.userId!就不用传值了
    var userList=await DB.selectUserDetail(userId);//可以直接写widget.userId!
    if (userList.isNotEmpty) {
      var user = userList.first;//重要,因为后台query字样query到的只能是list
      setState(() {
        nameCtrl.text = user["name"] ?? "";
        ageCtrl.text = user["age"]?.toString() ?? "";
      });
    }
  }

  Future<void> _updateUser(int userId, String name, int age) async {
    var db=await DB.updateUser(userId,name,age);
    setState(() {
      _selectUser(widget.userId!);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectUser(widget.userId!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("사용자 수정"),
        ),
        body : Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                    labelText: "Name"
                ),
              ),
              TextField(
                controller: ageCtrl,
                decoration: InputDecoration(
                    labelText: "Age"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () async {
                    await _updateUser(
                      widget.userId!,
                      nameCtrl.text,
                      int.parse(ageCtrl.text),
                    );
                    Navigator.pop(context, true); // 返回并通知上一页刷新
                  },
                  child: Text("수정")
              )
            ],
          ),
        )

    );
  }
}