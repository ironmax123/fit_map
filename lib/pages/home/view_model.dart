import 'package:fit_map/model/db/dbProvider.dart';
import 'package:fit_map/pages/home/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/entity/regist/entity.dart';

part "view_model.g.dart";

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<HomeState> build() async {
    final db = await ref.read(databaseProvider);
    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => RegistEntity.fromJson(data)).toList();
    final dists = items.map((item) => item.totalDist).toList();
    return HomeState(totalDist: dists.first);
  }

  void updatDist() async {
    final db = await ref.read(databaseProvider);
    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => RegistEntity.fromJson(data)).toList();
    final dists = items.map((item) => item.totalDist).toList();
    state = AsyncValue.data(HomeState(totalDist: dists.first));
  }
}
