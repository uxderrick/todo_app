import 'package:flutter/material.dart';
// import 'package:todo_app/widgets/todo.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class TodoItem extends StatefulWidget {
  final String id;
  final String todoText;

  bool isDone = false;
  // final Todo todo;

  TodoItem({
    Key? key,
    required this.id,
    required this.todoText,
    this.isDone = false,
  }) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      decoration: BoxDecoration(
          color: widget.isDone ? Colors.white38 : Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        onTap: () {
          setState(() {
            tapTask;
            print('Print');
          });
        },

        //Design
        title: Text('Meeting with Joan',
            softWrap: true,
            style: TextStyle(
                fontSize: 16,
                color: tdBlack,
                decoration: widget.isDone ? TextDecoration.lineThrough : null)),
        leading: Icon(
            widget.isDone ? Icons.check_box : Icons.check_box_outline_blank),
        trailing: GestureDetector(
          onTap: () {
            print('Delete');
          },
          child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  void tapTask(bool isDone) {
    setState(() {
      isDone = !isDone;
    });
  }
}
