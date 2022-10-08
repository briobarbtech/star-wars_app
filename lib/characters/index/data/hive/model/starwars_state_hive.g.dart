// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_state_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StarWarsStateHiveAdapter extends TypeAdapter<StarWarsStateHive> {
  @override
  final int typeId = 1;

  @override
  StarWarsStateHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StarWarsStateHive(
      listCharacter: (fields[0] as List)
          .map((dynamic e) => (e as Map).cast<String, dynamic>())
          .toList(),
      previous: fields[1] as String,
      next: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StarWarsStateHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.listCharacter)
      ..writeByte(1)
      ..write(obj.previous)
      ..writeByte(2)
      ..write(obj.next);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsStateHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
