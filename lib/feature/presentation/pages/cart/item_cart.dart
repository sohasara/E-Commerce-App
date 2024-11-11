import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Item Cart',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.purple,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            width: 400,
            child: Card(
              elevation: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 145,
                        width: 130,
                        child: Card(
                          elevation: 8,
                          child: Image.asset(
                            "assets/images/bag1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
