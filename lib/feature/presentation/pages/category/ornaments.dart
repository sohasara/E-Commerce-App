import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/girl_dress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/chip_container.dart';

class OrnamentsPage extends ConsumerWidget {
  const OrnamentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> girlDress = [
      'All',
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha'
    ];

    // final selectedCategory = ref.watch(girlDressCategoryProvider);
    // final filteredDresses = ref.watch(dressesProvider);

    return Scaffold(
      appBar: AppBar(),
    );
  }
}
