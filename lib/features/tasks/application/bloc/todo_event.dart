part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.saveTask({
    required Task task,
  }) = SaveTask;

  const factory TodoEvent.deleteTask({
    required Task task,
  }) = DeleteTask;
  const factory TodoEvent.editTask({
    required DateTime? scheduleTime,
    required Task task,
  }) = EditTask;

  const factory TodoEvent.init() = TasksInit;
  const factory TodoEvent.clearState() = TaskStateClear;
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
