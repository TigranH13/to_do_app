import 'package:to_do_app/features/tasks/domain/models/task.dart';

abstract class ITaskDataSource {
  Future<List<Task>> getTasks();

  Future<void> saveTask({required Task task});

  Future<void> removeTask({required Task task});

  Future<void> editTask({required Task task, required DateTime? scheduleTime});

  Future<void> cacheRemovedTask({required Task task});

  Future<void> clearRemovedTaskCache();

  Future<List<Task>> getRemovedTaskCache();

  Future<void> clearTaskStorage();
}
