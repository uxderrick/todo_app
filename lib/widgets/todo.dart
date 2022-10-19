import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Todo extends StatelessWidget {
  final String id;
  final String todoText;
  bool isDone = false;

  Todo({
    super.key,
    required this.id,
    required this.todoText,
    required this.isDone,
  });

  static List<Todo> todoList() {
    return [
      Todo(
        id: '01',
        todoText: 'Eat with Jane',
        isDone: true,
      ),
      Todo(
        id: '02',
        todoText: 'Eat with Aaron',
        isDone: true,
      ),
      Todo(
        id: '03',
        todoText: 'Eat with Senior',
        isDone: true,
      ),
      Todo(
        id: '04',
        todoText: 'Eat with Gifty',
        isDone: true,
      ),
      Todo(
        id: '05',
        todoText: 'Eat with Paul',
        isDone: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
