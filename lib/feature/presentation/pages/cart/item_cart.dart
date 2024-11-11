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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
              height: 160,
              width: 400,
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 145,
                          width: 130,
                          child: Card(
                            elevation: 2,
                            child: Image.asset(
                              "assets/images/bag1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Vintage Bag ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_rounded,
                              size: 30,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.remove,
                              color: Colors.red,
                              size: 30,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
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
                            elevation: 2,
                            child: Image.asset(
                              "assets/images/bag1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text("Vintage Bag ")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
