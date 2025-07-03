import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_list_page.dart';

class TodoDetailPage extends StatefulWidget {
  final TodoItem todoItem;

  const TodoDetailPage({super.key, required this.todoItem});

  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.todoItem.title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.todoItem.description,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                widget.todoItem.toggleCompleted();
              });
            },
            child: Text(
              widget.todoItem.completed
                  ? 'Mark as Completed'
                  : 'Mark as not Completed',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
