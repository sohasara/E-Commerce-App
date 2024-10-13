import 'package:delivery_app_with_admin_pannel/feature/data/models/bag_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipStateNotifier extends StateNotifier<String> {
  ChipStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final chipProviderFamily =
    StateNotifierProvider.family<ChipStateNotifier, String, String>(
  (ref, categoryType) {
    return ChipStateNotifier('All');
  },
);

final baglistProviderFamily = Provider((ref) {
  final selectedCategory = ref.watch(chipProviderFamily('BagPage'));

  if (selectedCategory == 'All') {
    return bagsModel;
  }
  return bagsModel
      .where((item) => item['category'] == selectedCategory)
      .toList();
});
