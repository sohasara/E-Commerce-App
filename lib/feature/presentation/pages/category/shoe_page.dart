import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/detailes_page/shoe_grid.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    final shoesname = ['slippers', 'Sneakers', 'Hills', 'Casuals'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ShoesPage'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoesname.length,
              itemBuilder: (context, index) {
                return ChipContainer(
                  name: shoesname[index],
                );
              },
            ),
          ),
          const ShoeGrid(),
        ],
      ),
    );
  }
}
