import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/models/note_model.dart';
part 'add_nots_state.dart';

class AddNotsCubit extends Cubit<AddNotsState> {
  AddNotsCubit() : super(AddNotsInitial());

  addNote(NoteModel note) {}
}
