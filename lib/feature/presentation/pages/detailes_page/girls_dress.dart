import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/chip_select.dart';

class GirlsDress extends ConsumerWidget {
  const GirlsDress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> girlDress = [
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha',
    ];

    // Accessing the index of the currently selected chip
    final selectedChipIndex = ref.watch(chipSelectionProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: girlDress.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChoiceChip(
                    label: Text(
                      girlDress[index],
                    ),
                    selected: selectedChipIndex == index,
                    selectedColor: Colors.blue,
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(
                      color: selectedChipIndex == index
                          ? Colors.white
                          : Colors.pink,
                    ),
                    showCheckmark: false,
                    onSelected: (bool selected) {
                      ref
                          .read(chipSelectionProvider.notifier)
                          .selectChip(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
