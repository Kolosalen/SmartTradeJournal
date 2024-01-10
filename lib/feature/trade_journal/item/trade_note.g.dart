// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_note.dart';

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
