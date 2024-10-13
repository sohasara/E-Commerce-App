import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChipStateNotifier extends StateNotifier<String> {
  ChipStateNotifier(super.state);

  void selectCategory(String category) {
    state = category;
  }
}

final chipProviderFamily = StateNotifierProvider<ChipStateNotifier, String>(
  (ref) {
    return ChipStateNotifier('All');
  },
);
