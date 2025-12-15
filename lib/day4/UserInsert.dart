import 'package:flutter/material.dart';
import 'UserList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const UserInsert(),
    );
  }
}

class UserInsert extends StatefulWidget {
  const UserInsert({super.key});

  @override
  State<UserInsert> createState() => _UserInsertState();
}

class _UserInsertState extends State<UserInsert> {
  late TextEditingController _nameCtrl;
  late TextEditingController _ageCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController();
    _ageCtrl = TextEditingController();
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
        title: Text("sqlite실습"),
        actions: [
          IconButton(
              onPressed: () {
                print("목록으로");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => UserList()
                    )
                );
              },
              icon: Icon(Icons.menu)
          )
        ],
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
              },
              child: Text("사용자 추가"),
            ),
          )
        ],
      ),
    );
  }
}