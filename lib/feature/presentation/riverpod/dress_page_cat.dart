import 'package:flutter_riverpod/flutter_riverpod.dart';

class GirlDressCategoryNotifier extends StateNotifier<String> {
  GirlDressCategoryNotifier(super.state);
  void selectCategory(String category) {
    state = category;
  }
}

final girlDressCategoryProvider =
    StateNotifierProvider<GirlDressCategoryNotifier, String>((ref) {
  return GirlDressCategoryNotifier('All');
});

// Updated dressesProvider to filter based on category
final dressesProvider = Provider<List<Map<String, String>>>((ref) {
  final selectedCategory = ref.watch(girlDressCategoryProvider);

  final allDresses = [
    {
      'category': 'bengali',
      'url': 'assets/images/dress1.webp',
      'price': '5000'
    },
    {
      'category': 'pakistani',
      'url': 'assets/images/dress2.webp',
      'price': '2000'
    },
    {
      'category': 'western',
      'url': 'assets/images/dress3.jpeg',
      'price': '3000'
    },
    {
      'category': 'bengali',
      'url': 'assets/images/dress4.jpeg',
      'price': '3500'
    },
    {'category': 'borkha', 'url': 'assets/images/dress5.webp', 'price': '400'},
    {'category': 'bengali', 'url': 'assets/images/dress6.jpg', 'price': '700'},
  ];

  if (selectedCategory == 'All') {
    return allDresses;
  }

  return allDresses
      .where((dress) =>
          dress['category']!.toLowerCase() == selectedCategory.toLowerCase())
      .toList();
});
