import 'package:delivery_app_with_admin_pannel/feature/data/models/girl_dress_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GirlStateNotifier extends StateNotifier<String> {
  GirlStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final girlchipProvider = StateNotifierProvider<GirlStateNotifier, String>(
  (ref) {
    return GirlStateNotifier('All');
  },
);

final girldressesProvider = Provider<List<Map<String, String>>>((ref) {
  final girlselectedCategory = ref.watch(girlchipProvider);

  if (girlselectedCategory == 'All') {
    return girldress;
  }

  return girldress
      .where((dress) => dress['category']! == girlselectedCategory)
      .toList();
});
