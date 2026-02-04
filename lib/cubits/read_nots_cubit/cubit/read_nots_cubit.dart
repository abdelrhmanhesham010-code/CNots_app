import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/constant/constant.dart';
import 'package:nots_app/models/note_model.dart';

part 'read_nots_state.dart';

class ReadNotsCubit extends Cubit<ReadNotsState> {
  ReadNotsCubit() : super(ReadNotsInitial()) {
    fetcAllhNote();
  }

  List<NoteModel>? notes;

  fetcAllhNote() async {
    var notsBox = Hive.box<NoteModel>(kPnoteBox);
    notes = notsBox.values.toList();
    emit(ReadNotsSucess());
  }
}
