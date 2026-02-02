import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/read_nots_cubit/cubit/read_nots_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/edite_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditeNoteView();
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffA64D79),
          ),

          // width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    notes.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Heebo',
                    ),
                  ),
                ),
                subtitle: Text(
                  notes.subTitle,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .6),
                    fontFamily: 'Heebo',
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                  iconSize: 26,
                  color: Colors.black,
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<ReadNotsCubit>(context).fetcAllhNote();
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 16),
                child: Text(
                  notes.date,
                  style: TextStyle(color: Colors.black.withValues(alpha: .5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
