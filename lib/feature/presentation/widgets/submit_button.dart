import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyNavigationBar(),
          ),
        );
      },
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade400,
              Colors.pink.shade300,
            ],
          ),
        ),
        child: const Center(
          child: Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
