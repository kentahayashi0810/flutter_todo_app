import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_detail_page.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TodoItem> todoItems = [
      TodoItem(title: 'Buy groceries', description: 'Milk, Bread, Eggs'),
      TodoItem(title: 'Walk the dog', description: '30 minutes in the park'),
      TodoItem(
        title: 'Complete Flutter project',
        description: 'Finish the to-do app',
      ),
      TodoItem(
        title: 'Read a book',
        description: 'Start with "Flutter for Beginners"',
      ),
      TodoItem(
        title: 'Call Mom',
        description: 'Check in and see how she is doing',
      ),
      TodoItem(title: 'Prepare dinner', description: 'Cook pasta and salad'),
      TodoItem(title: 'Exercise', description: '30 minutes of cardio'),
      TodoItem(
        title: 'Clean the house',
        description: 'Vacuum and dust all rooms',
      ),
      TodoItem(
        title: 'Plan weekend trip',
        description: 'Decide on destination and activities',
      ),
      TodoItem(
        title: 'Organize workspace',
        description: 'Declutter desk and files',
      ),
      TodoItem(
        title: 'Attend meeting',
        description: 'Discuss project updates with team',
      ),
      TodoItem(
        title: 'Grocery shopping',
        description: 'Buy fruits and vegetables',
      ),
      TodoItem(title: 'Laundry', description: 'Wash and fold clothes'),
      TodoItem(
        title: 'Pay bills',
        description: 'Electricity and internet bills',
      ),
      TodoItem(
        title: 'Study for exam',
        description: 'Review notes and practice questions',
      ),
      TodoItem(title: 'Watch a movie', description: 'Relax and enjoy a film'),
      TodoItem(
        title: 'Plan next week',
        description: 'Set goals and tasks for the week',
      ),
      TodoItem(
        title: 'Meditate',
        description: 'Spend 10 minutes in mindfulness',
      ),
      TodoItem(
        title: 'Update resume',
        description: 'Add recent work experience and skills',
      ),
      TodoItem(
        title: 'Practice coding',
        description: 'Solve problems on LeetCode',
      ),
      TodoItem(
        title: 'Clean the car',
        description: 'Wash and vacuum the interior',
      ),
      TodoItem(
        title: 'Buy birthday gift',
        description: 'Find a present for friend\'s birthday',
      ),
      TodoItem(
        title: 'Attend yoga class',
        description: 'Join the evening session',
      ),
      TodoItem(
        title: 'Write blog post',
        description: 'Share insights on Flutter development',
      ),
      TodoItem(
        title: 'Plan family gathering',
        description: 'Organize a get-together',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('To-do List')),
      body: Center(
        child: ListView.builder(
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
        ),
      ),
    );
  }
}

class TodoItem {
  final String title;
  final String description;
  final bool completed;

  TodoItem({
    required this.title,
    required this.description,
    this.completed = false,
  });
}
