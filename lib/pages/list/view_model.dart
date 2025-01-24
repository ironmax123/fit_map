import 'package:fit_map/model/db/logDB.dart';
import 'package:fit_map/model/entity/log/entity.dart';
import 'package:fit_map/pages/list/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "view_model.g.dart";

@riverpod
class ListViewModel extends _$ListViewModel {
  @override
  Future<ListState> build() async {
    final db = await ref.read(logProvider);

    final List<Map<String, dynamic>> dbData = await db.query('items');

    final items = dbData.map((data) => logEntity.fromJson(data)).toList();

    final dists = items.map((map) => map.advancedDist ?? 0).toList();
    final createdAts = items.map((item) => item.createdAt).toList();
    print('DB Data1: ${items}'); //これはちゃんとしたデータが返すことできてる
    return ListState(dvancedDist: dists, createdAt: createdAts);
  }

  void updateList() async {
    final db = await ref.read(logProvider);

    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => logEntity.fromJson(data)).toList();
    final dists = items.map((map) => map.advancedDist ?? 0).toList();
    final createdAts = items.map((item) => item.createdAt).toList();
    state =
        AsyncValue.data(ListState(dvancedDist: dists, createdAt: createdAts));
  }
}
