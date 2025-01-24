import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
class MapPageState with _$MapPageState {
  const factory MapPageState({
    required int adadvanced,
    required DateTime? createdAt,
  }) = _MapPageState;
}
