import 'package:delivery_app_with_admin_pannel/feature/data/models/decor_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'girl_dress_state.dart';

final decorprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return decorModel;
  }
  return decorModel
      .where((decor) => decor['category']! == selectedCat)
      .toList();
});
