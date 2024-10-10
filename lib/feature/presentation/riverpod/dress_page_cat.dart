import 'package:flutter_riverpod/flutter_riverpod.dart';

class GirlDressCategoryNotifier extends StateNotifier<String> {
  GirlDressCategoryNotifier(super.state);
  void selectCategory(String category) {
    state = category;
  }
}

final GirlDressCategoryProvider =
    StateNotifierProvider<GirlDressCategoryNotifier, String>((ref) {
  return GirlDressCategoryNotifier('All');
});
