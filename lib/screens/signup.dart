import 'package:flutter/material.dart';
import 'package:joblistingapp/app_button.dart';
import 'package:joblistingapp/app_textfield.dart';
import 'package:joblistingapp/screens/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 110, left: 27, right: 27, bottom: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let`s sign you up",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome \nJoin the community",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 47,
            ),
            AppTextField(
              placeholder: 'Enter your full name',
            ),
            AppTextField(
              placeholder: 'Enter your email',
            ),
            AppTextField(
              placeholder: 'Enter your password',
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SignIn()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Color(0xFF8F8F9E),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Sign In',
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
              label: 'Sign Up',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SignIn(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
