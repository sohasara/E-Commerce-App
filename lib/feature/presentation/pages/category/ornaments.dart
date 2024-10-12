import 'package:delivery_app_with_admin_pannel/feature/data/models/ornaments_model.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/image_grid.dart';
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
      body: ImageGrid(
        title: 'OrnamentsPage',
        categories: ornamentsCategories,
        items: ornamentsModel,
      ),
    );
  }
}
