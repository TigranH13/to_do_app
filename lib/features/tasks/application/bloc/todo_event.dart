part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.init() = TasksInit;

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

  const factory TodoEvent.clearState() = TaskStateClear;

  const factory TodoEvent.syncRemoteAndLocalData() = SyncRemoteAndLocalData;

  const factory TodoEvent.clearTaskLocalStorage() = ClearTaskLocalStorage;
}
