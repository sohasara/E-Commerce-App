import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/appliances_state.dart';

import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/girl_dress_state.dart';

class AppliancePage extends ConsumerWidget {
  const AppliancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorySelect = ref.watch(girlchipProvider);
    final applianceFilter = ref.watch(aplianceprovider);
    final List<String> applianceCHips = [
      'All',
      'Fridge',
      'Blender',
      'Washing',
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find the Best Electronics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: applianceCHips.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(girlchipProvider.notifier)
                              .selectCategory(applianceCHips[index]);
                        },
                        child: ChipContainer(
                          name: applianceCHips[index],
                          isSelected: categorySelect == applianceCHips[index],
                          color: Colors.cyan,
                        ),
                      );
                    }),
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
                itemCount: applianceFilter.length,
                itemBuilder: (context, index) {
                  final appliance = applianceFilter[index];
                  return Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          appliance['url']!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Price: ${appliance['price']}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                          ),
                        ),
                      ],
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
