import 'package:isar/isar.dart';
part 'todo_model.g.dart';

@collection
class Task {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  String title;

  Task({
    required this.title,
  });
}
