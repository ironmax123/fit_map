import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CheckState with _$CheckState {
  const factory CheckState({
    required String? StartPoint,
    required String? GoalPoint,
    required double totalDist,
  }) = _CheckState;
}
