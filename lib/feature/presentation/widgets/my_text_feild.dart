import 'package:flutter/material.dart';

class MyTextF extends StatelessWidget {
  const MyTextF({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          Icons.search,
        ),
        prefixIconColor: Colors.white,
        fillColor: Colors.pink,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
