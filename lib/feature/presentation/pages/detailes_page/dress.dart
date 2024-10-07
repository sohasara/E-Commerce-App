import 'package:flutter/material.dart';

class DressPage extends StatelessWidget {
  const DressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Find the best OutFits',
          style: TextStyle(
            color: Colors.purple[800],
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Chip(
              label: Text('Shirt'),
            ),
          ],
        ),
      ),
    );
  }
}
