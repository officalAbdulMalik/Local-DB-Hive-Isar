// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryPeopleAdapter extends TypeAdapter<CountryPeople> {
  @override
  final int typeId = 0;

  @override
  CountryPeople read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountryPeople(
      id: fields[0] as int?,
      countryName: fields[1] as String?,
      totalPopulation: fields[2] as String?,
      manInCountry: fields[3] as String?,
      womenInCountry: fields[4] as String?,
      childrenInCountry: fields[5] as String?,
      educated: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CountryPeople obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.countryName)
      ..writeByte(2)
      ..write(obj.totalPopulation)
      ..writeByte(3)
      ..write(obj.manInCountry)
      ..writeByte(4)
      ..write(obj.womenInCountry)
      ..writeByte(5)
      ..write(obj.childrenInCountry)
      ..writeByte(6)
      ..write(obj.educated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryPeopleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
