import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/models/note_model.dart';

part 'read_nots_state.dart';

class ReadNotsCubit extends Cubit<ReadNotsState> {
  ReadNotsCubit() : super(ReadNotsInitial());
}
