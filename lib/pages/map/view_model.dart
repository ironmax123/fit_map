import 'package:fit_map/model/db/dbProvider.dart';
import 'package:fit_map/model/repo/log/repo.dart';
import 'package:fit_map/model/repo/regist/repo.dart';
import 'package:fit_map/pages/map/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/entity/regist/entity.dart';

part "view_model.g.dart";

@riverpod
class MapViewModel extends _$MapViewModel {
  @override
  Future<MapState> build() async {
    final db = await ref.read(databaseProvider);
    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => RegistEntity.fromJson(data)).toList();
    final dists = items.map((item) => item.totalDist).toList();
    return MapState(totalDist: dists.first);
  }

  void addMap(Map<String, dynamic> item) async {
    final dbRepo = ref.read(logRepoProvider.notifier);
    dbRepo.addLog(item);
  }

  void updateDist(double total) async {
    final db = await ref.read(databaseProvider);
    final dbRepo = ref.read(registRepoProvider.notifier);
    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => RegistEntity.fromJson(data)).toList();
    final dists = items.map((item) => item.totalDist).toList();
    final newdist = dists.first + total;
    print(newdist);
    dbRepo.updateDist(newdist);

    state = AsyncValue.data(state.value!.copyWith(totalDist: newdist));
  }
}
