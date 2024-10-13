import 'package:delivery_app_with_admin_pannel/feature/data/models/bag_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BagStateNotifier extends StateNotifier<String> {
  BagStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final bagchipProvider = StateNotifierProvider<BagStateNotifier, String>(
  (ref) {
    return BagStateNotifier('All');
  },
);

final bagprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(bagchipProvider);
  if (selectedCat == 'All') {
    return bagsModel;
  }
  return bagsModel.where((bag) => bag['category']! == selectedCat).toList();
});
