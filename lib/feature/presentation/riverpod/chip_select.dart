import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipSelectionNotifier extends StateNotifier<int> {
  ChipSelectionNotifier() : super(-1); // Initially, no chip is selected

  // Method to select only one chip at a time
  void selectChip(int index) {
    state = index;
  }
}

final chipSelectionProvider =
    StateNotifierProvider<ChipSelectionNotifier, int>((ref) {
  return ChipSelectionNotifier();
});
