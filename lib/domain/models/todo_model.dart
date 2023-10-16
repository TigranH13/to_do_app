import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class Task {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String id;

  Task({
    required this.title,
    required this.id,
  });

  Task copyWith({
    String? title,
    String? id,
  }) {
    return Task(
      title: title ?? this.title,
      id: id ?? this.id,
    );
  }
}
