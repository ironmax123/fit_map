// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$logEntityImpl _$$logEntityImplFromJson(Map<String, dynamic> json) =>
    _$logEntityImpl(
      advancedDist: (json['advancedDist'] as num?)?.toInt(),
      createdAt: const TimestampConverter()
          .fromJson((json['createdAt'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$logEntityImplToJson(_$logEntityImpl instance) =>
    <String, dynamic>{
      'advancedDist': instance.advancedDist,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
