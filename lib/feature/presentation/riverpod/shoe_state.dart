import 'package:delivery_app_with_admin_pannel/feature/data/models/shoes_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'girl_dress_state.dart';

// class ShoeStateNotifier extends StateNotifier<String> {
//   ShoeStateNotifier(super.state);

//   void selectCategory(String category) {
//     state = category;
//   }
// }

// final shoechipProvider = StateNotifierProvider<ShoeStateNotifier, String>(
//   (ref) {
//     return ShoeStateNotifier('All');
//   },
// );

final shoeprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(girlchipProvider);
  if (selectedCat == 'All') {
    return shoesModel;
  }
  return shoesModel.where((shoe) => shoe['category']! == selectedCat).toList();
});
