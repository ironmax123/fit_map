import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState({
    required List<int?> dvancedDist,
    required List<String?> createdAt,
  }) = _ListState;
}
