part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {
  const TodoEvent();
}

class SaveTaskEvent extends TodoEvent {
  final Task task;

  const SaveTaskEvent({
    required this.task,
  });
}

class LoadTasksEvent extends TodoEvent {}

class DeleteTaskEvent extends TodoEvent {
  final Task task;

  const DeleteTaskEvent({
    required this.task,
  });
}

class EditTaskEvent extends TodoEvent {
  final Task task;

  const EditTaskEvent({
    required this.task,
  });
}
