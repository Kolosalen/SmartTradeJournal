// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticStateImpl _$$StatisticStateImplFromJson(Map<String, dynamic> json) =>
    _$StatisticStateImpl(
      barInfo: BarInfo.fromJson(json['barInfo'] as Map<String, dynamic>),
      type: json['type'] as int,
    );

Map<String, dynamic> _$$StatisticStateImplToJson(
        _$StatisticStateImpl instance) =>
    <String, dynamic>{
      'barInfo': instance.barInfo,
      'type': instance.type,
    };
