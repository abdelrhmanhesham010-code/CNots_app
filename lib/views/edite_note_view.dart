import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_textField.dart';
import 'package:nots_app/widgets/search_icon.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SearchIcon(icon: Icon(Icons.check))],
        backgroundColor: Color(0xff6A1E55),
        title: const Text(
          'Edit Note',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlaywriteGBJGuides',
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Column(
          children: [
            SizedBox(height: 30),
            CustomTextfield(hint: "Title"),
            SizedBox(height: 20),
            CustomTextfield(hint: 'Content', mazLins: 5),
          ],
        ),
      ),
    );
  }
}
