// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acount.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AcountAdapter extends TypeAdapter<Acount> {
  @override
  final int typeId = 1;

  @override
  Acount read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Acount(
      credential: fields[2] as AuthCredential,
      userName: fields[0] as String,
      userEmail: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Acount obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.userEmail)
      ..writeByte(2)
      ..write(obj.credential);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AcountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
