import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/read_nots_cubit/cubit/read_nots_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/widgets/custom_textField.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await note.save();
              Navigator.pop(context);
              context.read<ReadNotsCubit>().fetcAllhNote();
            },
            icon: Icon(Icons.check),
          ),
        ],
        backgroundColor: Color(0xffDA4167),
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
        child: Column(
          children: [
            const SizedBox(height: 30),
            CustomTextfield(
              initialValue: note.title,
              hint: "Title",
              onchanged: (val) {
                note.title = val;
              },
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              initialValue: note.subTitle,
              hint: 'Content',
              mazLins: 5,
              onchanged: (val) {
                note.subTitle = val;
              },
            ),
          ],
        ),
      ),
    );
  }
}
