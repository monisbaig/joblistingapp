import 'package:flutter/material.dart';
import 'package:joblistingapp/screens/signup.dart';

void main() {
  runApp(JobListingApp());
}

class JobListingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
