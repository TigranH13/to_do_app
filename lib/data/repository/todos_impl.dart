// import 'package:hive/hive.dart';

// import 'package:to_do_app/domain/models/todo_model.dart';

// import 'package:to_do_app/domain/repository/todos.dart';

// class TodosRepositoryImpl extends ITodosRepository {
//   final myBox = Hive.box<Task>('mybox');
//   final String path = 'todos';

//   @override
//   Future<List<Task>> loadTasks() async {
//     final tasks = myBox.values.toList();
//     return tasks;
//   }

//   @override
//   Future<void> saveTask({required Task task}) async {
//     await myBox.put(task.id, task);
//   }

//   @override
//   Future<void> deleteTask({required String id}) async {
//     await myBox.delete(id);
//   }

//   @override
//   Future<void> editTask({required Task task}) async {
//     await myBox.put(task.id, task);
//   }
// }
