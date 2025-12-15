import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(TodoApp());

/// 整个 App 的入口
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoHomePage(),
    );
  }
}

/// Todo 主页面（有状态）
class TodoHomePage extends StatefulWidget {
  const TodoHomePage({super.key});

  // @override//只有返回的东西才是真正的内容
  // State <TodoHomePage> createState() => _TodoHomePageState();
  @override
  State<TodoHomePage> createState() {
    return _TodoHomePageState();
  }
}

class _TodoHomePageState extends State<TodoHomePage> {
  /// 输入框控制器
  final TextEditingController inputController = TextEditingController();

  /// Todo 数据列表
  final List<Map<String, Object>> todoList = [];

  /// 添加 Todo
  void addTodoItem() {
    final String todoTitle = inputController.text;

    setState(() {
      todoList.add({
        "title": todoTitle,
        "isDone": false,
      });
      inputController.clear(); // 등록 후 텍스트 필드 비우기
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("할 일"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          /// 입력 영역
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: inputController,
                    decoration: const InputDecoration(
                      hintText: "할 일 입력 하셔",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: addTodoItem,
                child: const Text("추가"),
              ),
            ],
          ),

          /// Todo 리스트 영역
          Expanded(
            child: todoList.isEmpty
                ? const Center(child: Text("할 일 없음"))
                : ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                final Map<String, Object> todoItem =
                todoList[index];

                return ListTile(
                  title: Text(
                    todoItem["title"] as String,
                    style: TextStyle(
                      decoration:
                      (todoItem["isDone"] as bool)
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  leading: Checkbox(
                    value: todoItem["isDone"] as bool,
                    onChanged: (value) {
                      setState(() {
                        todoItem["isDone"] = value!;
                      });
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("삭제?"),
                          content: Text("정말 삭제하시겠습니까?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                setState(() {
                                  todoList.removeAt(index);
                                });
                              },
                              child: Text("확인"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                
                              },
                              child: Text("취소                                                                                                                                                                                                                                                                                                                                                                                                    "),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
