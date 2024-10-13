import 'package:flutter/material.dart';

class OrnamentsPage extends StatelessWidget {
  const OrnamentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ornamentsCategories = ['All', 'Earrings', 'Necklace', 'Rings'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ornaments'),
        ),
        body: Column());
  }
}
