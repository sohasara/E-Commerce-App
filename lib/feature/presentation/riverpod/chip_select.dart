import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipSelectionNotifier extends StateNotifier<int> {
  ChipSelectionNotifier() : super(-1);

  void selectChip(int index) {
    state = index;
  }
}

final chipSelectionProvider =
    StateNotifierProvider<ChipSelectionNotifier, int>((ref) {
  return ChipSelectionNotifier();
});
