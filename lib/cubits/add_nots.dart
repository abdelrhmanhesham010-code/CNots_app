import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_nots_state.dart';

class AddNotsCubit extends Cubit<AddNotsState> {
  AddNotsCubit() : super(AddNotsInitial());
}
