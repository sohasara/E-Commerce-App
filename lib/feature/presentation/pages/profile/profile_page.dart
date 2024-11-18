import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Text(
            //   "Profile",
            //   style: TextStyle(
            //     fontSize: 30,
            //     fontWeight: FontWeight.w900,
            //   ),
            // ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.person_3_rounded,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Nadia Islam Rupa",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            Container(
              height: 430,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
