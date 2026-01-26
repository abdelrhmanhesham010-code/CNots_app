import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.mazLins = 1});
  final String hint;
  final int mazLins;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: mazLins,
      cursorColor: Color(0xffBFECFF),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xffBFECFF)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color(0xffBFECFF)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
