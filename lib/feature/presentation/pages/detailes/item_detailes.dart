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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Kotlin provides several frameworks designed for backend development, including the well-known Spring Boot and Ktor. These frameworks benefit from Kotlin's expressive code, which simplifies the task of writing concise, maintainable source code.",
              style: TextStyle(),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green[200],
            ),
          ),
        ],
      ),
    );
  }
}
