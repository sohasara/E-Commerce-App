import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/detailes_page/grid_boys.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';

class BoysDress extends StatelessWidget {
  const BoysDress({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> boysCat = [
      'Bengali',
      'Pant',
      'Shirt',
      'T-Shirt',
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 55,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: boysCat.length,
                  itemBuilder: (context, index) {
                    return ChipContainer(
                      name: boysCat[index],
                    );
                  }),
            ),
            const GridBoys(),
          ],
        ),
      ),
    );
  }
}
