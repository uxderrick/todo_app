import 'package:flutter/material.dart';

//Search Box

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}

//Modal

