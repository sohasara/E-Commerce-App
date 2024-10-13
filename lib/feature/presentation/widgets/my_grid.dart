import 'package:delivery_app_with_admin_pannel/feature/data/models/girl_dress_model.dart';
import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          itemCount: girldress.length,
          itemBuilder: (context, index) {
            final dres = girldress[index];
            return GestureDetector(
              onTap: () {},
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      dres['url']!,
                      height: 140,
                      width: 185,
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Price:${dres['price']!}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
