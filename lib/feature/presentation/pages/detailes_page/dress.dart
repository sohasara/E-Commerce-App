import 'package:flutter/material.dart';

class DressPage extends StatelessWidget {
  const DressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
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
