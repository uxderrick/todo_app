import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

import '../widgets/components.dart';
import '../widgets/todo_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // final todoList = Todo.todoList();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: tdBlack,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: const Image(
                        image: AssetImage('images/image of derrick.png'))))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchBox(),
            const SizedBox(
              height: 48,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'All To-Dos',
                style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w500, color: tdBlack),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView(
              children: [
                TodoItem(
                  id: '01',
                  todoText: 'Dinner',
                  isDone: false,
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
