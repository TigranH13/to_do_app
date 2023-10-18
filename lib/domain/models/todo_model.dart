import 'package:isar/isar.dart';
import 'package:hive/hive.dart';
import 'package:fnv/fnv.dart';
part 'todo_model.g.dart';

@collection
@HiveType(typeId: 0)
class Task {
  @HiveField(1)
  @Index(unique: true, replace: true)
  String id;
  Id get isarId => fnv1a_32_s(id);

  @HiveField(0)
  String title;

  Task({
    required this.id,
    required this.title,
  });
}
