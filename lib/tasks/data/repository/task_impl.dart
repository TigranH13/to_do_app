import 'package:injectable/injectable.dart';
import 'package:to_do_app/tasks/domain/i_tasks_repository.dart';
import 'package:to_do_app/tasks/domain/models/task.dart';
import 'package:to_do_app/tasks/data/datasources/task_remote_data_source_iml.dart';
import 'package:to_do_app/tasks/data/datasources/task_local_data_source_impl.dart';

@injectable
class TaskRepositoryImpl implements ITasksRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSourceImpl remoteDataSource;

  TaskRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    await localDataSource.editTask(task: task, scheduleTime: scheduleTime);
    remoteDataSource.editTask(task: task, scheduleTime: scheduleTime);
  }

  @override
  Future<List<Task>> getTasks() async {
    return localDataSource.getTasks();
  }

  @override
  Future<void> removeTask({required Task task}) async {
    await localDataSource.removeTask(task: task);

    try {
      remoteDataSource.cacheRemovedTask(task: task);
      remoteDataSource.removeTask(task: task);
    } catch (e) {
      localDataSource.cacheRemovedTask(task: task);
    }
  }

  @override
  Future<void> saveTask({required Task task}) async {
    await localDataSource.saveTask(task: task);
    remoteDataSource.saveTask(task: task);
  }

  @override
  Future<void> syncRemoteAndLocalData() async {
    final List<Task> removedRemoteCashe =
        await remoteDataSource.getRemovedTaskCache();
    final List<Task> removedLocalCache =
        await localDataSource.getRemovedTaskCache();
    await _syncFirebaseWithRemoveCache(removedLocalCache, removedRemoteCashe);

    final List<Task> isarTasks = await localDataSource.getTasks();
    final List<Task> fbTasks = await remoteDataSource.getTasks();

    await _syncIsarWithFirebase(isarTasks, fbTasks);
    await _syncFirebaseWithIsar(isarTasks, fbTasks);
  }

  Future<void> _syncFirebaseWithRemoveCache(
      List<Task> removedLocalCache, List<Task> removedRemoteChashe) async {
    for (var task in removedLocalCache) {
      remoteDataSource.removeTask(task: task);
      remoteDataSource.cacheRemovedTask(task: task);
    }

    for (var task in removedRemoteChashe) {
      localDataSource.removeTask(task: task);
    }
  }

  Future _syncIsarWithFirebase(List<Task> isarTasks, List<Task> fbTasks) async {
    final List<Task> redundantIasrTask = isarTasks
        .where(
          (isarTask) => fbTasks.any(
            (fbTask) =>
                fbTask.isarId == isarTask.isarId &&
                fbTask.timeStemp.isAfter(isarTask.timeStemp),
          ),
        )
        .toList();

    for (var task in redundantIasrTask) {
      await localDataSource.removeTask(task: task);
    }

    for (final task in fbTasks) {
      if (!isarTasks.any((isarTask) => isarTask.isarId == task.isarId)) {
        localDataSource.saveTask(task: task);
      }
    }
  }

  Future _syncFirebaseWithIsar(List<Task> isarTasks, List<Task> fbTasks) async {
    final List<Task> redundantFbTask = fbTasks
        .where(
          (fbTask) => isarTasks.any(
            (isarTask) =>
                isarTask.isarId == fbTask.isarId &&
                isarTask.timeStemp.isAfter(fbTask.timeStemp),
          ),
        )
        .toList();

    for (var task in redundantFbTask) {
      await remoteDataSource.removeTask(task: task);
    }
    for (final task in isarTasks) {
      if (!fbTasks.any((fbTask) => fbTask.isarId == task.isarId)) {
        remoteDataSource.saveTask(task: task);
      }
    }
  }
}
