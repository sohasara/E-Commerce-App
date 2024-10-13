import 'package:delivery_app_with_admin_pannel/feature/data/models/ornaments_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'index_select_state.dart';

final ornamentsprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return ornamentsModel;
  }
  return ornamentsModel
      .where((ornament) => ornament['category']! == selectedCat)
      .toList();
});
