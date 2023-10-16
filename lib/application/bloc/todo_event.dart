part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

class SaveTodoEvent extends TodoEvent {
  final ToDo todo;

  SaveTodoEvent({
    required this.todo,
  });
}

class LoadTodosEvent extends TodoEvent {}

class DeleteTodoEvent extends TodoEvent {
  final String id;

  DeleteTodoEvent({
    required this.id,
  });
}

class EditTodoEvent extends TodoEvent {
  final ToDo todo;

  EditTodoEvent({
    required this.todo,
  });
}
