import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'LOG IN',
              style: TextStyle(),
            ),
            MyTextFeild()
          ],
        ),
      ),
    );
  }
}
