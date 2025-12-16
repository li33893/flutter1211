import 'package:flutter/material.dart';
import 'db.dart';


class UserView extends StatefulWidget {
  final int userId;

  const UserView({super.key, required this.userId});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  String name = "";
  int age = 0;

  @override
  void initState() {
    super.initState();
    _selectUser();
  }

  Future<void> _selectUser() async {
    var userList = await DB.selectUserDetail(widget.userId);
    if (userList.isNotEmpty) {
      var user = userList.first;
      setState(() {
        name = user["name"];
        age = user["age"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("사용자 정보")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("id: ${widget.userId}"),
            Text("name: $name"),
            Text("age: $age"),

          ],
        ),
      ),
    );
  }
}





