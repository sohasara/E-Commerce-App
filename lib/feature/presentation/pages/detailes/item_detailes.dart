import 'package:flutter/material.dart';

class DetailedItem extends StatelessWidget {
  const DetailedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallmates",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/decor2.jpg",
            height: 330,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Text("data"),
        ],
      ),
    );
  }
}
