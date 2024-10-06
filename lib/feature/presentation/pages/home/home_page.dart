import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/my_text_feild.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTextF(),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                width: 370,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.purple,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const Text(
                ' Sales',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'ALL ITEMS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              Container(
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
