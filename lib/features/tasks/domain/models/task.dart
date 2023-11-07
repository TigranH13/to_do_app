import 'package:hive/hive.dart';

import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Task {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  final DateTime scheduleTime;

  @HiveField(3)
  final DateTime timeStemp;

  Task({
    required this.timeStemp,
    required this.scheduleTime,
    required this.id,
    required this.title,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
