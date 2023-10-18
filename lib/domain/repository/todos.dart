import 'package:to_do_app/domain/models/todo_model.dart';

abstract class ITodosRepository {
  Future<List<Task>> loadTasks();
  Future<void> saveTask({required Task task});
  Future<void> deleteTask({required Task task});
  Future<void> editTask({required Task task});
}
