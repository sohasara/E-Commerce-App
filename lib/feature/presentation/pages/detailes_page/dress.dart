import 'package:flutter/material.dart';

class DressPage extends StatelessWidget {
  const DressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Find the best outfits',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 18,
              color: Colors.purple,
            ),
            tabs: [
              Tab(
                text: 'Girls',
              ),
              Tab(text: 'Boys'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Tab')),
            Center(child: Text('Favorites Tab')),
          ],
        ),
      ),
    );
  }
}
