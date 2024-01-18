// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bar_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarInfo _$BarInfoFromJson(Map<String, dynamic> json) => BarInfo(
      (json['successCountDay'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['unsuccessCountDay'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['successCountWeek'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['unsuccessCountWeek'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['successCountMonth'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['unsuccessCountMonth'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$BarInfoToJson(BarInfo instance) => <String, dynamic>{
      'successCountDay': instance.successCountDay,
      'unsuccessCountDay': instance.unsuccessCountDay,
      'successCountWeek': instance.successCountWeek,
      'unsuccessCountWeek': instance.unsuccessCountWeek,
      'successCountMonth': instance.successCountMonth,
      'unsuccessCountMonth': instance.unsuccessCountMonth,
    };
