import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'To-do List App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TodoListPage()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: MaterialButton(
          onPressed: onPressed,
          color: Colors.blue,
          textColor: Colors.white,
          child: const Text('Go to To-do List'),
        ),
      ),
    );
  }
}
