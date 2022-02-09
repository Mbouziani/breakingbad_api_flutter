part of 'charachter_cubit.dart';

@immutable
abstract class CharachterState {}

class CharachterInitial extends CharachterState {}

class Charachterloaded extends CharachterState {
  final List<charachter> mychar;

  Charachterloaded(this.mychar);
}
