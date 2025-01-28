// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistEntityImpl _$$RegistEntityImplFromJson(Map<String, dynamic> json) =>
    _$RegistEntityImpl(
      StartPoint: json['StartPoint'] as String?,
      GoalPoint: json['GoalPoint'] as String?,
      totalDist: (json['totalDist'] as num).toDouble(),
    );

Map<String, dynamic> _$$RegistEntityImplToJson(_$RegistEntityImpl instance) =>
    <String, dynamic>{
      'StartPoint': instance.StartPoint,
      'GoalPoint': instance.GoalPoint,
      'totalDist': instance.totalDist,
    };
