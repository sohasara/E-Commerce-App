// import 'package:flutter/material.dart';

// class ChipContainer extends StatelessWidget {
//   final String name;
//   const ChipContainer({
//     super.key,
//     required this.name,
//     required bool isSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 40,
//         width: 90,
//         decoration: BoxDecoration(
//           border: Border.all(width: 0.3),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Text(name),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  final String name;
  final bool isSelected;

  const ChipContainer({
    required this.name,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(name),
        backgroundColor: isSelected ? Colors.pinkAccent : Colors.grey[300],
        labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
    );
  }
}
