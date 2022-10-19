import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TodoItem extends StatelessWidget {
  final String id;
  final String todoText;
  bool isDone;
  // final Todo todo;

  TodoItem(
      {Key? key,
      required this.id,
      required this.todoText,
      required this.isDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Ghana');
      },

      //Tile
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    isDone ? Icons.check_box : Icons.check_box_outline_blank,
                    size: 20,
                    color: tdBlue,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    width: 240,
                    child: Text(
                      todoText,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 16,
                          color: tdBlack,
                          decoration:
                              isDone ? TextDecoration.lineThrough : null),
                    ),
                  ),
                ],
              ),

              //Delete Button

              GestureDetector(
                onTap: () {
                  print('Delete');
                },

                //Design
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
