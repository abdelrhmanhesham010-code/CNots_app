import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    this.mazLins = 1,
    this.onSaved,
    this.onchanged,
    this.initialValue,
    this.controller,
  });
  final String hint;
  final int mazLins;
  final void Function(String?)? onSaved;
  final Function(String)? onchanged;
  final String? initialValue;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      onChanged: onchanged,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب يا كسها';
        } else {
          return null;
        }
      },
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
