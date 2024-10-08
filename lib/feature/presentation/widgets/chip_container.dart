import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  final String name;
  const ChipContainer({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(width: 0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(name),
        ),
      ),
    );
  }
}
