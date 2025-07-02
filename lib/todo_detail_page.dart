import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_list_page.dart';

class TodoDetailPage extends StatelessWidget {
  final TodoItem todoItem;

  const TodoDetailPage({super.key, required this.todoItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todoItem.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todoItem.description, style: TextStyle(fontSize: 18.0)),
      ),
    );
  }
}
