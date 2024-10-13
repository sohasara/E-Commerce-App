import 'package:delivery_app_with_admin_pannel/feature/data/models/shoes_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'index_select_state.dart';

final shoeprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return shoes;
  }
  return shoes.where((shoe) => shoe['category']! == selectedCat).toList();
});
