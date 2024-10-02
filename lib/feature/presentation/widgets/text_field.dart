import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  const MyTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
    );
  }
}
