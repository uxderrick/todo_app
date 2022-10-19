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
  String _enteredText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
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
                  
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              elevation: 0,
              child: Container(
                margin: const EdgeInsets.all(24),
                height: 240,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                _enteredText = value;
                              });
                            },
                            keyboardType: TextInputType.multiline,
                            maxLines: 300,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: 'Enter your note here',
                                counterText:
                                    '${_enteredText.length.toString()} character(s)'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'Save Note',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
