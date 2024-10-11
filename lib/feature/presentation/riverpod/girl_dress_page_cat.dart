import 'package:delivery_app_with_admin_pannel/feature/data/models/girl_dress_model.dart';
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

final dressesProvider = Provider<List<Map<String, String>>>((ref) {
  final selectedCategory = ref.watch(girlDressCategoryProvider);

  if (selectedCategory == 'All') {
    return girldress;
  }

  return girldress
      .where((dress) => dress['category']! == selectedCategory)
      .toList();
});
