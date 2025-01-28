import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required double totalDist,
  }) = _MapState;
}
