part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.saveTask({
    required Task task,
  }) = TaskSave;
  const factory TodoEvent.loadTasks() = TaskLoad;
  const factory TodoEvent.deleteTask({
    required Task task,
  }) = TaskDelete;
  const factory TodoEvent.editTask({
    required Task task,
  }) = TaskEdit;
}

// sealed class TodoEvent {
//   const TodoEvent();
// }

// class SaveTaskEvent extends TodoEvent {
//   final Task task;

//   const SaveTaskEvent({
//     required this.task,
//   });
// }

// class LoadTasksEvent extends TodoEvent {}

// class DeleteTaskEvent extends TodoEvent {
//   final Task task;

//   const DeleteTaskEvent({
//     required this.task,
//   });
// }

// class EditTaskEvent extends TodoEvent {
//   final Task task;

//   const EditTaskEvent({
//     required this.task,
//   });
// }
