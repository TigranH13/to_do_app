import 'package:dartz/dartz.dart' hide Task;
import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/error/exceptions.dart';
import 'package:to_do_app/core/error/failures.dart';
import 'package:to_do_app/features/tasks/data/datasources/task_local_data_source_impl.dart';
import 'package:to_do_app/features/tasks/data/datasources/task_remote_data_source_iml.dart';
import 'package:to_do_app/features/tasks/domain/i_tasks_repository.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

@Injectable(as: ITasksRepository)
class TaskRepositoryImpl implements ITasksRepository {
  final TaskLocalDataSourceImpl localDataSource;
  final RemoteDataSourceImpl remoteDataSource;

  TaskRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<void> editTask(
      {required Task task, required DateTime? scheduleTime}) async {
    try {
      await localDataSource.editTask(task: task, scheduleTime: scheduleTime);
      remoteDataSource.editTask(task: task, scheduleTime: scheduleTime);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<Either<Failure, List<Task>>> getTasks() async {
    try {
      final List<Task> tasks = await localDataSource.getTasks();
      return Right(tasks);
    } on CacheException {
      return Left(
        CacheFailure(),
      );
    }
  }

  @override
  Future<void> removeTask({required Task task}) async {
    try {
      await localDataSource.removeTask(task: task);

      try {
        await remoteDataSource.cacheRemovedTask(task: task);
        await remoteDataSource.removeTask(task: task);
      } catch (e) {
        localDataSource.cacheRemovedTask(task: task);
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> saveTask({required Task task}) async {
    await localDataSource.saveTask(task: task);

    remoteDataSource.saveTask(task: task);
  }

  @override
  Future<void> syncRemoteAndLocalData() async {
    try {
      final List<Task> removedRemoteCashe =
          await remoteDataSource.getRemovedTaskCache();
      final List<Task> removedLocalCache =
          await localDataSource.getRemovedTaskCache();
      await _syncFirebaseWithRemoveCache(removedLocalCache, removedRemoteCashe);

      final List<Task> isarTasks = await localDataSource.getTasks();
      final List<Task> fbTasks = await remoteDataSource.getTasks();

      await _syncIsarWithFirebase(isarTasks, fbTasks);
      await _syncFirebaseWithIsar(isarTasks, fbTasks);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> clearTaskLocalStorage() async {
    try {
      await localDataSource.clearTaskStorage();
      await localDataSource.clearRemovedTaskCache();
    } catch (e) {
      throw CacheException();
    }
  }

  Future<void> _syncFirebaseWithRemoveCache(
      List<Task> removedLocalCache, List<Task> removedRemoteChashe) async {
    try {
      for (var task in removedLocalCache) {
        remoteDataSource.removeTask(task: task);
        remoteDataSource.cacheRemovedTask(task: task);
      }

      for (var task in removedRemoteChashe) {
        localDataSource.removeTask(task: task);
      }
    } catch (e) {
      throw CacheException();
    }
  }

  Future _syncIsarWithFirebase(List<Task> isarTasks, List<Task> fbTasks) async {
    final List<Task> redundantIasrTask = isarTasks
        .where(
          (isarTask) => fbTasks.any(
            (fbTask) =>
                fbTask.id == isarTask.id &&
                fbTask.timeStemp.isAfter(isarTask.timeStemp),
          ),
        )
        .toList();

    for (var task in redundantIasrTask) {
      await localDataSource.removeTask(task: task);
    }

    for (final task in fbTasks) {
      if (!isarTasks.any((isarTask) => isarTask.id == task.id)) {
        localDataSource.saveTask(task: task);
      }
    }
  }

  Future _syncFirebaseWithIsar(List<Task> isarTasks, List<Task> fbTasks) async {
    final List<Task> redundantFbTask = fbTasks
        .where(
          (fbTask) => isarTasks.any(
            (isarTask) =>
                isarTask.id == fbTask.id &&
                isarTask.timeStemp.isAfter(fbTask.timeStemp),
          ),
        )
        .toList();

    for (var task in redundantFbTask) {
      await remoteDataSource.removeTask(task: task);
    }
    for (final task in isarTasks) {
      if (!fbTasks.any((fbTask) => fbTask.id == task.id)) {
        remoteDataSource.saveTask(task: task);
      }
    }
  }
}
