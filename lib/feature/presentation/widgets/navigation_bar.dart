import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/home/home_page.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/bottom_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyNavigationBar extends ConsumerWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentindex = ref.watch(bottomIndexProvider);
    final List pages = [
      const HomePage(),
      const Text('category'),
      const Text('cart'),
      const Text('profile'),
    ];
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (value) {
          ref.read(bottomIndexProvider.notifier).state = value;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
