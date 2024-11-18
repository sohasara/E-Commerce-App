import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/shoe_state.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/girl_dress_state.dart';

class ShoePage extends ConsumerWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorySelect = ref.watch(girlchipProvider);
    final shoeFilter = ref.watch(shoeprovider);
    final shoesname = ['All', 'Slippers', 'Sneakers', 'Hills', 'Casuals'];
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
                  return GestureDetector(
                    onTap: () {
                      ref
                          .read(girlchipProvider.notifier)
                          .selectCategory(shoesname[index]);
                    },
                    child: ChipContainer(
                      name: shoesname[index],
                      isSelected: categorySelect == shoesname[index],
                      color: Colors.indigo,
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
            itemCount: shoeFilter.length,
            itemBuilder: (context, index) {
              final shoe = shoeFilter[index];
              return Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      shoe['url']!,
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Price: ${shoe['price']}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
