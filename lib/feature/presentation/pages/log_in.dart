import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/submit_button.dart';
import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'LOG IN',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MyTextFeild(
                icon: Icon(
                  Icons.email,
                ),
                hinttext: 'Email',
              ),
              SizedBox(
                height: 25,
              ),
              MyTextFeild(
                icon: Icon(
                  Icons.key_sharp,
                ),
                hinttext: 'Password',
              ),
              SizedBox(
                height: 30,
              ),
              SubmitButton(),
              Text(
                'or',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
