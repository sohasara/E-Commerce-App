import 'package:delivery_app_with_admin_pannel/feature/data/models/girl_dress_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'index_select_state.dart';

final dressesProvider = Provider<List<Map<String, String>>>((ref) {
  final selectedCategory = ref.watch(chipProvider);

  if (selectedCategory == 'All') {
    return girldress;
  }

  return girldress
      .where((dress) => dress['category']! == selectedCategory)
      .toList();
});
