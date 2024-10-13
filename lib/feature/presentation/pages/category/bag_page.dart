import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/girl_dress_page_cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/chip_container.dart';

class BagPage extends ConsumerWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> girlDress = [
      'All',
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha'
    ];

    return Scaffold(
      appBar: AppBar(),
    );
  }
}
