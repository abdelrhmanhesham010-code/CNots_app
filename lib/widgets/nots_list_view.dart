import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/read_nots_cubit/cubit/read_nots_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/widgets/note_item.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotsCubit, ReadNotsState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ReadNotsCubit>(context).notes ?? [];
        print(state);
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return NoteItem(note: notes[index]);
          },
        );
      },
    );
  }
}
