import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/data/source/isar_db.dart';
import 'package:to_do_app/domain/models/todo_model.dart';

class IsarDbImpl implements IsarDb {
  late Future<Isar> db;

  IsarDbImpl() {
    db = openDb();
  }

  @override
  Future<void> editTask(String title, int id) async {
    final isar = await db;

    Task? task = await isar.tasks.filter().idEqualTo(id).findFirst();
    task!.title = title;
    saveTask(task);
  }

  @override
  Future<List<Task>> getTasks() async {
    final isar = await db;

    final List<Task> tasks = await isar.tasks.where().findAll();
    if (tasks.isEmpty) {
      return [];
    }
    return tasks;
  }

  @override
  Future<Isar> openDb() async {
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
  Future<void> removeTask(Task task) async {
    final isar = await db;

    await isar.writeTxn(
      () async {
        await isar.tasks.delete(task.id);
      },
    );
  }

  @override
  Future<void> saveTask(Task newTask) async {
    final isar = await db;
    isar.writeTxn<int>(
      () => isar.tasks.put(newTask),
    );
  }
}
