part of 'add_nots.dart';

@immutable
abstract class AddNotsState {}

class AddNotsInitial extends AddNotsState {}

class AddNotsLoading extends AddNotsState {}

class AddNotsSuccess extends AddNotsState {}

class AddNotsFaliuer extends AddNotsState {
  final String errorMessage;

  AddNotsFaliuer(this.errorMessage);
}
