import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final Icon icon;
  final String hinttext;
  const MyTextFeild({
    super.key,
    required this.icon,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hinttext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
