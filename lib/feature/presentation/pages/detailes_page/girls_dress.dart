import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/detailes_page/my_grid.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';

import 'package:flutter/material.dart';

class GirlsDress extends StatelessWidget {
  const GirlsDress({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> girlDress = [
      'All',
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: girlDress.length,
                itemBuilder: (context, index) {
                  return ChipContainer(
                    name: girlDress[index],
                  );
                },
              ),
            ),
            const MyGrid()
          ],
        ),
      ),
    );
  }
}
