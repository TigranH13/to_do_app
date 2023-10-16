import 'package:to_do_app/domain/models/todo_model.dart';

abstract class TodosRepository {
  Future<void> loadTodos();
  Future<void> saveTodo(ToDo toDo);
  Future<void> deleteTodo(String id);
}
