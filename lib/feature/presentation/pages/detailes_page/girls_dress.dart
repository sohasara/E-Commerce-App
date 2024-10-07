import 'package:flutter/material.dart';

class GirlsDress extends StatelessWidget {
  const GirlsDress({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> girlDress = [
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha',
    ];
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
                    child: Chip(
                      label: Text(
                        girlDress[index],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
