import 'package:isar/isar.dart';
import 'package:hive/hive.dart';
import 'package:fnv/fnv.dart';
import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@collection
@HiveType(typeId: 0)
@JsonSerializable()
class Task {
  Id get isarId => fnv1a_32_s(forId);
  @HiveField(0)
  String forId;

  @HiveField(1)
  String title;

  @HiveField(2)
  final DateTime scheduleTime;

  @HiveField(3)
  final DateTime timeStemp;

  Task({
    required this.timeStemp,
    required this.scheduleTime,
    required this.forId,
    required this.title,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
