import 'package:isar/isar.dart';
import 'package:hive/hive.dart';
import 'package:fnv/fnv.dart';
part 'todo_model.g.dart';

@collection
@HiveType(typeId: 0)
class Task {
  Id get isarId => fnv1a_32_s(forId);
  @HiveField(1)
  String forId;

  @HiveField(0)
  @Index(type: IndexType.value)
  String title;

  Task({
    required this.forId,
    required this.title,
  });
}
