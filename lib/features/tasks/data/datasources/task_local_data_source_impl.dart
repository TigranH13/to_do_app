import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/tasks/data/datasources/task_data_source.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

@injectable
class TaskLocalDataSourceImpl implements ITaskDataSource {
  late Future<Box<Task>> removedTasksCache;
  late Future<Box<Task>> tasksStorage;

  TaskLocalDataSourceImpl() {
    tasksStorage = _openDb('storage');
    removedTasksCache = _openDb('removedTasksCache');
  }

  Future<Box<Task>> _openDb(String name) async {
    if (!Hive.isBoxOpen(name)) {
      await Hive.openBox<Task>(
        name,
      );
    }

    final myBox = Hive.box<Task>(name);
    return myBox;
  }

  @override
  Future<void> cacheRemovedTask({required Task task}) {
    // TODO: implement cacheRemovedTask
    throw UnimplementedError();
  }

  @override
  Future<void> clearRemovedTaskCache() async {
    Box<Task> hiveBox = await removedTasksCache;
    await hiveBox.clear();
  }

  @override
  Future<void> clearTaskStorage() async {
    Box<Task> hiveBox = await tasksStorage;
    await hiveBox.clear();
  }

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    Box<Task> hiveBox = await tasksStorage;
    await hiveBox.put(task.id, task);
  }

  @override
  Future<List<Task>> getRemovedTaskCache() async {
    Box<Task> hiveBox = await removedTasksCache;
    final List<Task> tasks = hiveBox.values.toList();
    return tasks;
  }

  @override
  Future<List<Task>> getTasks() async {
    Box<Task> hiveBox = await tasksStorage;
    final List<Task> tasks = hiveBox.values.toList();
    return tasks;
  }

  @override
  Future<void> removeTask({required Task task}) async {
    Box<Task> hiveBox = await tasksStorage;
    await hiveBox.delete(task.id);
  }

  @override
  Future<void> saveTask({required Task task}) async {
    Box<Task> hiveBox = await tasksStorage;
    await hiveBox.put(task.id, task);
  }
}
