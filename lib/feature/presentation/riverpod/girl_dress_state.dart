import 'package:delivery_app_with_admin_pannel/feature/data/models/girl_dress_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipStateNotifier extends StateNotifier<String> {
  ChipStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final chipProvider = StateNotifierProvider<ChipStateNotifier, String>(
  (ref) {
    return ChipStateNotifier('All');
  },
);

final girldressesProvider = Provider<List<Map<String, String>>>((ref) {
  final girlselectedCategory = ref.watch(chipProvider);

  if (girlselectedCategory == 'All') {
    return girldress;
  }

  return girldress
      .where((dress) => dress['category']! == girlselectedCategory)
      .toList();
});
