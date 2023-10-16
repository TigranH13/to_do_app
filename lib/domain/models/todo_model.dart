import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 2)
class ToDo {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String id;

  ToDo({
    required this.title,
    required this.id,
  });

  ToDo copyWith({
    String? title,
    String? id,
  }) {
    return ToDo(
      title: title ?? this.title,
      id: id ?? this.id,
    );
  }
}
