import 'package:delivery_app_with_admin_pannel/feature/data/models/category_model.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/appliance.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/bag_page.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/dress.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/home_decor.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/ornaments.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/category/shoe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../riverpod/appliances_state.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const catePage = [
      DressPage(),
      ShoePage(),
      BagPage(),
      OrnamentsPage(),
      AppliancePage(),
      HomeDecor(),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return GestureDetector(
                    onTap: () {
                      // ref
                      //     .read(applichipProvider.notifier)
                      //     .selectCategory('All');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => catePage[index],
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            category['iconurl']!,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            category['name']!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
