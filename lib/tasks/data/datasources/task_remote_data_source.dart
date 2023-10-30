import '../../domain/models/task.dart';

abstract class ITaskDataRemoteSource {
  Future<List<Task>> getTasks();
  Future<void> saveTask({required Task task});
  Future<void> removeTask({required Task task});
  Future<void> editTask({required Task task, required DateTime? scheduleTime});
}
