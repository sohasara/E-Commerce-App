import 'package:flutter/material.dart';

class MyTextF extends StatelessWidget {
  const MyTextF({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 0.0,
        right: 20,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            Icons.search,
          ),
          prefixIconColor: Colors.white,
          fillColor: Colors.pink,
          hintText: 'search',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}
