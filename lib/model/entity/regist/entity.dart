import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class RegistEntity with _$RegistEntity {
  const factory RegistEntity({
    required LatLng startPoint,
    required LatLng goalPoint,
    required int totalDist,
  }) = _RegistEntity;

  factory RegistEntity.fromJson(Map<String, dynamic> json) =>
      _$RegistEntityFromJson(json);
}
