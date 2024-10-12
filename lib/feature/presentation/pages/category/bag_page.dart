import 'package:flutter/material.dart';

import '../../../data/models/bag_model.dart';
import '../../widgets/image_grid.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bagCategories = ['All', 'BagPacks', 'Side Bags', 'Shoulder Bags'];

    return Scaffold(
      appBar: AppBar(),
      body: ImageGrid(
        title: 'BagPage',
        categories: bagCategories,
        items: bagsModel,
      ),
    );
  }
}
