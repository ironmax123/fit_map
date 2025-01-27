// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$logEntityImpl _$$logEntityImplFromJson(Map<String, dynamic> json) =>
    _$logEntityImpl(
      dvancedDist: json['dvancedDist'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as String?),
    );

Map<String, dynamic> _$$logEntityImplToJson(_$logEntityImpl instance) =>
    <String, dynamic>{
      'dvancedDist': instance.dvancedDist,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
