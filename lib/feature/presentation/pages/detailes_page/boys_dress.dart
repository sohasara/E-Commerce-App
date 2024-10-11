import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/boy_dress_state.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoysDress extends ConsumerWidget {
  const BoysDress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorySelect = ref.watch(boychipProvider);
    final dressFilter = ref.watch(boydressprovider);
    final List<String> boysCat = [
      'All',
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
                    return GestureDetector(
                      onTap: () {
                        ref
                            .read(boychipProvider.notifier)
                            .selectedCategory(boysCat[index]);
                      },
                      child: ChipContainer(
                        name: boysCat[index],
                        isSelected: categorySelect == boysCat[index],
                        color: Colors.blue,
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
              itemCount: dressFilter.length,
              itemBuilder: (context, index) {
                final dress = dressFilter[index];
                return Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        dress['url']!,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Price: ${dress['price']}',
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
    );
  }
}
