import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/my_text_feild.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            MyTextF(),
          ],
        ),
      ),
    );
  }
}
