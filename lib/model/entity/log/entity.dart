// ignore_for_file: camel_case_types

import 'package:fit_map/model/timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class logEntity with _$logEntity {
  const factory logEntity({
    double? dvancedDist,
    @TimestampConverter() DateTime? createdAt,
  }) = _logEntity;
  factory logEntity.fromJson(Map<String, dynamic> json) =>
      _$logEntityFromJson(json);
}
