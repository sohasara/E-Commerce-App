import 'package:delivery_app_with_admin_pannel/feature/data/models/decor_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DecorStateNotifier extends StateNotifier<String> {
  DecorStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final decorchipProvider = StateNotifierProvider<DecorStateNotifier, String>(
  (ref) {
    return DecorStateNotifier('All');
  },
);

final decorprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(decorchipProvider);
  if (selectedCat == 'All') {
    return decorModel;
  }
  return decorModel
      .where((decor) => decor['category']! == selectedCat)
      .toList();
});
