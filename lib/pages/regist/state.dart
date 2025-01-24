import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:latlong2/latlong.dart';
part 'state.freezed.dart';

@freezed
class RegistState with _$RegistState {
  const factory RegistState({
    @Default(LatLng(0, 0)) LatLng startPoint,
    @Default(LatLng(0, 0)) LatLng goalPoint,
    @Default(0) int totalDist,
  }) = _RegistState;
}
