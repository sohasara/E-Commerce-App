import 'package:flutter/material.dart';

class GirlsDress extends StatelessWidget {
  const GirlsDress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Chip(
            label: Text('data'),
          ),
        ],
      ),
    );
  }
}
