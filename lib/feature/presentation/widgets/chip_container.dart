import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  const ChipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
