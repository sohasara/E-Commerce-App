import 'package:delivery_app_with_admin_pannel/feature/data/models/appliances_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppliStateNotifier extends StateNotifier<String> {
  AppliStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final applichipProvider = StateNotifierProvider<AppliStateNotifier, String>(
  (ref) {
    return AppliStateNotifier('All');
  },
);

final aplianceprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(applichipProvider);
  if (selectedCat == 'All') {
    return applianceModel;
  }
  return applianceModel
      .where((appliance) => appliance['category']! == selectedCat)
      .toList();
});
