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
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> globalKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextfield(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextfield(
            hint: 'content',
            mazLins: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 30),

          custombottom(
            onTap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
                globalKey.currentState!.reset();
                autovalidateMode = AutovalidateMode.disabled;
                setState(() {});
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
