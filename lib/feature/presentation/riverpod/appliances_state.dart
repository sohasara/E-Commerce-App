import 'package:delivery_app_with_admin_pannel/feature/data/models/appliances_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'index_select_state.dart';

final aplianceprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return applianceModel;
  }
  return applianceModel
      .where((appliance) => appliance['category']! == selectedCat)
      .toList();
});
