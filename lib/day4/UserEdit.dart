import 'package:flutter/material.dart';

class UserEdit extends StatefulWidget {
  final String name;
  final String age;

  const UserEdit({super.key, required this.name, required this.age});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  late TextEditingController _nameCtrl;
  late TextEditingController _ageCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.name);
    _ageCtrl = TextEditingController(text: widget.age);
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _ageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text("사용자 수정")
      ),
      body: Column(
        children: [
          TextField(
              controller:_nameCtrl,
              decoration:InputDecoration(
                labelText:"name",
              )
          ),
          SizedBox(height: 10),
          TextField(
              controller:_ageCtrl,
              decoration:InputDecoration(
                labelText:"age",
              )
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: (){
                print("inputted value:${_nameCtrl.text},${_ageCtrl.text}");
                Navigator.pop(context);
              },
              child: Text("사용자 수정"),
            ),
          )
        ],
      ),
    );
  }
}