import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/bag_state.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BagPage extends ConsumerWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorySelect = ref.watch(bagchipProvider);

    final bagFilter = ref.watch(bagprovider);
    final List<String> bagChips = [
      'All',
      'BagPacks',
      'Side Bags',
      'Small Bags',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find Your Favourites'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bagChips.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(bagchipProvider.notifier)
                              .selectCategory(bagChips[index]);
                        },
                        child: ChipContainer(
                          name: bagChips[index],
                          isSelected: categorySelect == bagChips[index],
                          color: Colors.black,
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
                itemCount: bagFilter.length,
                itemBuilder: (context, index) {
                  final ornament = bagFilter[index];
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
                            color: Colors.black,
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
