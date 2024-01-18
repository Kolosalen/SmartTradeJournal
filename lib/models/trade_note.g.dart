// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_note.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TradeNoteAdapter extends TypeAdapter<TradeNote> {
  @override
  final int typeId = 0;

  @override
  TradeNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TradeNote(
      fields[0] as String,
      fields[1] as DateTime,
      fields[2] as bool,
      fields[3] as double,
      fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TradeNote obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.strategy)
      ..writeByte(1)
      ..write(obj.dateTime)
      ..writeByte(2)
      ..write(obj.result)
      ..writeByte(3)
      ..write(obj.totalAmount)
      ..writeByte(4)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TradeNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TradeNote _$TradeNoteFromJson(Map<String, dynamic> json) => TradeNote(
      json['strategy'] as String,
      DateTime.parse(json['dateTime'] as String),
      json['result'] as bool,
      (json['totalAmount'] as num).toDouble(),
      json['notes'] as String,
    );

Map<String, dynamic> _$TradeNoteToJson(TradeNote instance) => <String, dynamic>{
      'strategy': instance.strategy,
      'dateTime': instance.dateTime.toIso8601String(),
      'result': instance.result,
      'totalAmount': instance.totalAmount,
      'notes': instance.notes,
    };
