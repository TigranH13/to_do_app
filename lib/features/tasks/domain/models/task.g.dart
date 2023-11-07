// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final int typeId = 0;

  @override
  Task read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task(
      timeStemp: fields[3] as DateTime,
      scheduleTime: fields[2] as DateTime,
      id: fields[0] as String,
      title: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.scheduleTime)
      ..writeByte(3)
      ..write(obj.timeStemp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      timeStemp: DateTime.parse(json['timeStemp'] as String),
      scheduleTime: DateTime.parse(json['scheduleTime'] as String),
      id: json['id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'scheduleTime': instance.scheduleTime.toIso8601String(),
      'timeStemp': instance.timeStemp.toIso8601String(),
    };
