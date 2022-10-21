import 'package:flutter/material.dart';
import 'package:joblistingapp/app_button.dart';
import 'package:joblistingapp/app_textfield.dart';
import 'package:joblistingapp/screens/signup.dart';

import 'dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 110, bottom: 49, left: 27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's sign you in",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome back\nyou've been missed",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 47,
            ),
            AppTextField(placeholder: 'Enter your email address'),
            AppTextField(placeholder: 'Enter your password'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SignUp()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color(0xFF8F8F9E),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            AppButton(
                label: 'Sign In',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Dashboard(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
