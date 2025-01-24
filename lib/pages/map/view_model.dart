import 'package:fit_map/model/repo/log/repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "view_model.g.dart";

@riverpod
class MapViewModel extends _$MapViewModel {
  @override
  void build() {}
  void addMap(Map<String, dynamic> item) async {
    final dbRepo = ref.read(logRepoProvider.notifier);
    dbRepo.addLog(item);
  }
}
