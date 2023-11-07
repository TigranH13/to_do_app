import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/core/error/exceptions.dart';

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
    try {
      if (!Hive.isBoxOpen(name)) {
        await Hive.openBox<Task>(
          name,
        );
      }

      final myBox = Hive.box<Task>(name);

      return myBox;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheRemovedTask({required Task task}) async {
    try {
      Box<Task> hiveBox = await removedTasksCache;
      hiveBox.put(task.id, task);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> clearRemovedTaskCache() async {
    try {
      Box<Task> hiveBox = await removedTasksCache;
      await hiveBox.clear();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> clearTaskStorage() async {
    try {
      Box<Task> hiveBox = await tasksStorage;
      await hiveBox.clear();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    try {
      Box<Task> hiveBox = await tasksStorage;
      await hiveBox.put(task.id, task);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<Task>> getRemovedTaskCache() async {
    try {
      Box<Task> hiveBox = await removedTasksCache;
      final List<Task> tasks = hiveBox.values.toList();
      return tasks;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<Task>> getTasks() async {
    try {
      Box<Task> hiveBox = await tasksStorage;
      final List<Task> tasks = hiveBox.values.toList();
      return tasks;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> removeTask({required Task task}) async {
    try {
      Box<Task> hiveBox = await tasksStorage;
      await hiveBox.delete(task.id);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> saveTask({required Task task}) async {
    try {
      Box<Task> hiveBox = await tasksStorage;
      await hiveBox.put(task.id, task);
    } catch (e) {
      throw CacheException();
    }
  }
}
