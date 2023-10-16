part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class LoadedState extends TodoState {
  final List<ToDo> toDo;

  LoadedState({required this.toDo});
}

class LoadingState extends TodoState {}
