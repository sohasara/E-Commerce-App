import 'package:delivery_app_with_admin_pannel/feature/data/models/boy_dress_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoyChipState extends StateNotifier<String> {
  BoyChipState(super.state);
  void selectedCategory(String cat) {
    state = cat;
  }
}

final boychipProvider = StateNotifierProvider<BoyChipState, String>((ref) {
  return BoyChipState('All');
});

final boydressprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(boychipProvider);
  if (selectedCat == 'All') {
    return boyDress;
  }
  return boyDress
      .where((boydres) => boydres['category']! == selectedCat)
      .toList();
});
