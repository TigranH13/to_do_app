import 'package:to_do_app/data/source/isar_db_impl.dart';
import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/domain/repository/todos.dart';

class TodosRepositoryImplWithIsr implements ITodosRepository {
  final isarDb = IsarDbImpl();

  @override
  Future<void> deleteTask({required Task task}) async {
    await isarDb.removeTask(task);
  }

  @override
  Future<void> editTask({required String title, required int id}) async {
    await isarDb.editTask(title, id);
    await isarDb.getTasks();
  }

  @override
  Future<void> saveTask({required Task task}) async {
    await isarDb.saveTask(task);
    await isarDb.getTasks();
  }

  @override
  Future<List<Task>> loadTasks() async {
    return isarDb.getTasks();
  }
}
