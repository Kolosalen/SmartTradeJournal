// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_list_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteListStateImpl _$$NoteListStateImplFromJson(Map<String, dynamic> json) =>
    _$NoteListStateImpl(
      noteList: (json['noteList'] as List<dynamic>)
          .map((e) => TradeNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoteListStateImplToJson(_$NoteListStateImpl instance) =>
    <String, dynamic>{
      'noteList': instance.noteList,
      'runtimeType': instance.$type,
    };

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      noteList: (json['noteList'] as List<dynamic>?)
              ?.map((e) => TradeNote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TradeNote>[],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'noteList': instance.noteList,
      'runtimeType': instance.$type,
    };
