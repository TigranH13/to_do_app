import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/domain/repository/todos.dart';

class TodosRepositoryImplWithIsr implements ITodosRepository {
  late Future<Isar> db;

  TodosRepositoryImplWithIsr() {
    db = _openDb();
  }

  Future<Isar> _openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([TaskSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(
      Isar.getInstance(),
    );
  }

  @override
  Future<void> deleteTask({required Task task}) async {
    final isar = await db;

    await isar.writeTxn(
      () async {
        await isar.tasks.delete(task.isarId);
      },
    );
  }

  @override
  Future<void> saveTask({required Task task}) async {
    final isar = await db;

    await isar.writeTxn(
      () async {
        await isar.tasks.put(task);
      },
    );
    await loadTasks();
  }

  @override
  Future<List<Task>> loadTasks() async {
    final isar = await db;

    final List<Task> tasks = await isar.tasks.where().findAll();
    if (tasks.isEmpty) {
      return [];
    }
    return tasks;
  }

  @override
  Future<void> editTask({
    required Task task,
  }) async {
    final isar = await db;

    Task? newTask = await isar.tasks.filter().idEqualTo(task.id).findFirst();
    newTask!.title = task.title;
    saveTask(task: newTask);
    loadTasks();
  }
}
