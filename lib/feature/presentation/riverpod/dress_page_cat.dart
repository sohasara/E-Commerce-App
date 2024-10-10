import 'package:flutter_riverpod/flutter_riverpod.dart';

class DressCategoryNotifier extends StateNotifier<String> {
  DressCategoryNotifier(super.state);
  void selectCategory(String category) {
    state = category;
  }
}
