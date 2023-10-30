import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:to_do_app/core/notifications/notify_service.dart';
import 'package:to_do_app/tasks/data/datasources/task_local_data_source.dart';

import 'package:to_do_app/tasks/domain/models/task.dart';

@injectable
class LocalDataSource implements ITaskLocalDataSource {
  late Future<Isar> tasksStorage;
  late Future<Isar> removedTasksCache;

  LocalDataSource() {
    tasksStorage = _openDb('storage');
    removedTasksCache = _openDb('removedTasksCache');
  }

  Future<Isar> _openDb(String name) async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      final String path = dir.path;

      return await Isar.open([
        TaskSchema,
      ], inspector: true, directory: path, name: name);
    }
    return Future.value(
      Isar.getInstance(),
    );
  }

  @override
  Future<void> removeTask({
    required Task task,
  }) async {
    final isar = await tasksStorage;

    await isar.writeTxn(
      () async {
        await isar.tasks.delete(task.isarId);
      },
    );

    NotificationService().removeNotification(
      id: task.isarId.hashCode,
    );
  }

  @override
  Future<void> saveTask({required Task task}) async {
    NotificationService().createTaskScheduleNotification(task: task);

    final isar = await tasksStorage;

    await isar.writeTxn(
      () async {
        await isar.tasks.put(task);
      },
    );
  }

  @override
  Future<void> editTask({required Task task, DateTime? scheduleTime}) async {
    NotificationService().createTaskScheduleNotification(task: task);

    await saveTask(task: task);
  }

  @override
  Future<List<Task>> getTasks() async {
    final isar = await tasksStorage;

    final List<Task> tasks =
        await isar.tasks.where().sortByTimeStemp().findAll();
    if (tasks.isEmpty) {
      print('duzs');
      return [];
    }
    return tasks;
  }

  @override
  Future<void> cacheRemovedTask({required Task task}) async {
    final isar = await removedTasksCache;
    await isar.writeTxn(
      () async {
        await isar.tasks.put(task);
      },
    );
  }

  @override
  Future<void> clearRemovedTaskCache() async {
    Isar isar = await removedTasksCache;

    await isar.writeTxn(
      () => isar.tasks.clear(),
    );
  }

  @override
  Future<List<Task>> getRemovedTaskCache() async {
    final isar = await removedTasksCache;

    final List<Task> tasks =
        await isar.tasks.where().sortByScheduleTime().findAll();
    if (tasks.isEmpty) {
      return [];
    }
    return tasks;
  }

  @override
  Future<void> clearTaskStorage() async {
    Isar isar = await tasksStorage;
    await isar.writeTxn(
      () => isar.clear(),
    );
  }
}
