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
          title: const Text('Find the best outfit'),
          bottom: const TabBar(
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
