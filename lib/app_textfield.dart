import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;

  AppTextField({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFF5D5D67),
        ),
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
          hintStyle: const TextStyle(
            color: Color(0xFF8F8F9E),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
