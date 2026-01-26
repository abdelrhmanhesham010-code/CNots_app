import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_bottom.dart';
import 'package:nots_app/widgets/custom_textField.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomTextfield(hint: 'Title'),
              SizedBox(height: 20),
              CustomTextfield(hint: 'content', mazLins: 5),
              SizedBox(height: 30),

              custombottom(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
