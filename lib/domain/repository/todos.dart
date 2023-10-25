import 'package:to_do_app/domain/models/task.dart';

abstract class ITodosRepository {
  Future<List<Task>> loadTasks();
  Future<void> saveTask({required Task task});
  Future<void> deleteTask({required Task task});
  Future<void> editTask({required Task task, required DateTime? scheduleTime});
}
