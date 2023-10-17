import 'dart:ffi';

import 'package:isar/isar.dart';
import 'package:to_do_app/domain/models/todo_model.dart';

abstract class IsarDb {
  Future<Isar> openDb();
  Future<List<Task>> getTasks();
  Future<void> saveTask(Task task);
  Future<void> removeTask(Task task);
  Future<void> editTask(String title, int id);
}
