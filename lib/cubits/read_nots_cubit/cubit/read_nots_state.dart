part of 'read_nots_cubit.dart';

@immutable
sealed class ReadNotsState {}

final class ReadNotsInitial extends ReadNotsState {}

final class ReadNotsLoading extends ReadNotsState {}

final class ReadNotsSucess extends ReadNotsState {}
