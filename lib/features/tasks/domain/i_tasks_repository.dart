import 'package:dartz/dartz.dart' hide Task;
import 'package:to_do_app/core/error/failures.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

abstract class ITasksRepository {
  Future<Either<Failure, List<Task>>> getTasks();
  Future<void> saveTask({required Task task});
  Future<void> removeTask({required Task task});
  Future<void> editTask({required Task task, required DateTime? scheduleTime});
  Future<void> syncRemoteAndLocalData();
  Future<void> clearTaskLocalStorage();
}
