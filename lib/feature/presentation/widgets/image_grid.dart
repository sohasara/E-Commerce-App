import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod/filted_dress_provider.dart';

class CategoryPage extends ConsumerWidget {
  final String title;
  final List<String> categories;
  final List<Map<String, String>> items;

  const CategoryPage({
    required this.title,
    required this.categories,
    required this.items,
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(chipProviderFamily(title));
    final filteredItems = ref.watch(listProviderFamily(items));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 55,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return GestureDetector(
                      onTap: () {
                        ref
                            .read(chipProviderFamily(title).notifier)
                            .selectCategory(category);
                      },
                      child: ChipContainer(
                        name: category[index],
                        isSelected: selectedCategory == category[index],
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
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                final dress = filteredItems[index];
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
