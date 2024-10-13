import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/index_select_state.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/ornaments_state.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrnamentsPage extends ConsumerWidget {
  const OrnamentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorySelect = ref.watch(chipProvider);
    final ornamentFilter = ref.watch(ornamentsprovider);
    final List<String> ornamentChips = [
      'All',
      'Earrings',
      'Necklace',
      'Rings',
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ornamentChips.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(chipProvider.notifier)
                              .selectCategory(ornamentChips[index]);
                        },
                        child: ChipContainer(
                          name: ornamentChips[index],
                          isSelected: categorySelect == ornamentChips[index],
                          color: Colors.amber,
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemCount: ornamentFilter.length,
                itemBuilder: (context, index) {
                  final ornament = ornamentFilter[index];
                  return Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ornament['url']!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Price: ${ornament['price']}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
