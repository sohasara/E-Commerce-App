// import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/index_select_state.dart';

// import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/decor_state.dart';

class HomeDecor extends ConsumerWidget {
  const HomeDecor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final categorySelect = ref.watch(chipProvider);
    final decorFIlter = ref.watch(decorprovider);
    // final List<String> decorChips = [
    //   'All',
    //   'Earrings',
    //   'Necklace',
    //   'Rings',
    // ];
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 55,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: decorChips.length,
              //       itemBuilder: (context, index) {
              //         return GestureDetector(
              //           onTap: () {
              //             ref
              //                 .read(chipProvider.notifier)
              //                 .selectCategory(decorChips[index]);
              //           },
              //           child: ChipContainer(
              //             name: decorChips[index],
              //             isSelected: categorySelect == decorChips[index],
              //             color: Colors.amber,
              //           ),
              //         );
              //       }),
              // ),
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
                itemCount: decorFIlter.length,
                itemBuilder: (context, index) {
                  final ornament = decorFIlter[index];
                  return Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ornament['url']!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Price: ${ornament['price']}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
