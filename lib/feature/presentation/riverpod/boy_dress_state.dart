import 'package:delivery_app_with_admin_pannel/feature/data/models/boy_dress_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoyStateNotifier extends StateNotifier<String> {
  BoyStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final boychipProvider = StateNotifierProvider<BoyStateNotifier, String>(
  (ref) {
    return BoyStateNotifier('All');
  },
);
final boydressprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(boychipProvider);
  if (selectedCat == 'All') {
    return boyDress;
  }
  return boyDress
      .where((boydres) => boydres['category']! == selectedCat)
      .toList();
});
