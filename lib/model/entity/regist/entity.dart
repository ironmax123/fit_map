import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class RegistEntity with _$RegistEntity {
  const factory RegistEntity({
    required String? StartPoint,
    required String? GoalPoint,
    required double totalDist,
  }) = _RegistEntity;

  factory RegistEntity.fromJson(Map<String, dynamic> json) =>
      _$RegistEntityFromJson(json);
}
