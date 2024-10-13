import 'package:delivery_app_with_admin_pannel/feature/data/models/boy_dress_model.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/index_select_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final boydressprovider = Provider<List<Map<String, String>>>((ref) {
  final selectedCat = ref.watch(chipProvider);
  if (selectedCat == 'All') {
    return boyDress;
  }
  return boyDress
      .where((boydres) => boydres['category']! == selectedCat)
      .toList();
});
