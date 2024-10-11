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
