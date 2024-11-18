import 'package:delivery_app_with_admin_pannel/feature/data/models/bag_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'girl_dress_state.dart';

final bagprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return bagsModel;
  }
  return bagsModel.where((bag) => bag['category']! == selectedCat).toList();
});
