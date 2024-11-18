import 'package:delivery_app_with_admin_pannel/feature/data/models/ornaments_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'girl_dress_state.dart';

// class OrnamentStateNotifier extends StateNotifier<String> {
//   OrnamentStateNotifier(super.state);

//   void selectCategory(String category) {
//     state = category;
//   }
// }

// final oramentchipProvider =
//     StateNotifierProvider<OrnamentStateNotifier, String>(
//   (ref) {
//     return OrnamentStateNotifier('All');
//   },
// );

final ornamentsprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(girlchipProvider);
  if (selectedCat == 'All') {
    return ornamentsModel;
  }
  return ornamentsModel
      .where((ornament) => ornament['category']! == selectedCat)
      .toList();
});
