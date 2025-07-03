import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_detail_page.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<TodoItem>> loadTodoItems() async {
      final String jsonString = await rootBundle.loadString(
        'assets/todos.json',
      );
      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList
          .map(
            (item) => TodoItem(
              title: item['title'],
              description: item['description'],
              completed: item['completed'] ?? false,
            ),
          )
          .toList();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('To-do List')),
      body: FutureBuilder(
        future: loadTodoItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No to-do items found.'));
          } else {
            final List<TodoItem> todoItems = snapshot.data!;

            return ListView.builder(
              itemCount: todoItems.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(todoItems[index].title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TodoDetailPage(todoItem: todoItems[index]),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}

class TodoItem {
  final String title;
  final String description;
  bool completed;

  TodoItem({
    required this.title,
    required this.description,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }
}
