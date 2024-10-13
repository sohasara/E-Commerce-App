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

final listProviderFamily =
    Provider.family<List<Map<String, String>>, List<Map<String, String>>>(
        (ref, items) {
  final selectedCategory = ref.watch(chipProviderFamily('BagPage'));

  if (selectedCategory == 'All') {
    return items;
  }
  return items.where((item) => item['category'] == selectedCategory).toList();
});
