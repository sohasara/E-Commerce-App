import 'package:flutter/material.dart';

class ChipContainer extends StatelessWidget {
  final String name;
  final bool isSelected;
  const ChipContainer({
    super.key,
    required this.name,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
