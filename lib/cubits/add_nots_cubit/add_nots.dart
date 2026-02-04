import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constant/constant.dart';
import 'package:nots_app/models/note_model.dart';
part 'add_nots_state.dart';

class AddNotsCubit extends Cubit<AddNotsState> {
  AddNotsCubit() : super(AddNotsInitial());
  Color color = Color(0xffffffff);
  addNote(NoteModel note) async {
    note.color = color.toARGB32();
    log('message color = $color');
    emit(AddNotsLoading());
    try {
      var notsBox = Hive.box<NoteModel>(kPnoteBox);
      await notsBox.add(note);
      emit(AddNotsSuccess());
    } catch (e) {
      emit(AddNotsFaliuer(e.toString()));
    }
  }
}
