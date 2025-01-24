// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistEntityImpl _$$RegistEntityImplFromJson(Map<String, dynamic> json) =>
    _$RegistEntityImpl(
      startPoint: LatLng.fromJson(json['startPoint'] as Map<String, dynamic>),
      goalPoint: LatLng.fromJson(json['goalPoint'] as Map<String, dynamic>),
      totalDist: (json['totalDist'] as num).toInt(),
    );

Map<String, dynamic> _$$RegistEntityImplToJson(_$RegistEntityImpl instance) =>
    <String, dynamic>{
      'startPoint': instance.startPoint,
      'goalPoint': instance.goalPoint,
      'totalDist': instance.totalDist,
    };
