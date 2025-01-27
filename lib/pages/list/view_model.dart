import 'package:fit_map/model/db/logDB.dart';
import 'package:fit_map/model/entity/log/entity.dart';
import 'package:fit_map/pages/list/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:intl/intl.dart';

part "view_model.g.dart";

@riverpod
class ListViewModel extends _$ListViewModel {
  @override
  Future<ListState> build() async {
    final db = await ref.read(logProvider);

    final List<Map<String, dynamic>> dbData = await db.query('items');
    try {
      final items1 = dbData.map((data) => logEntity.fromJson(data)).toList();
      print(items1);
    } catch (e) {
      print(e);
    }
    final items = dbData.map((data) => logEntity.fromJson(data)).toList();

    final dists =
        items.map((item) => int.tryParse(item.dvancedDist ?? '0')).toList();
    final createdAts = items.map((item) {
      final dateTime = item.createdAt ?? DateTime.now();
      return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
    }).toList();
    print('DB Data1: ${items}');
    return ListState(dvancedDist: dists, createdAt: createdAts);
  }

  void updateList() async {
    final db = await ref.read(logProvider);

    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => logEntity.fromJson(data)).toList();
    final dists =
        items.map((item) => int.tryParse(item.dvancedDist ?? '0')).toList();
    final createdAts = items.map((item) {
      final dateTime = item.createdAt ?? DateTime.now();
      return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
    }).toList();
    state =
        AsyncValue.data(ListState(dvancedDist: dists, createdAt: createdAts));
  }

  void delete(int? dist) {
    final db = ref.read(logProvider);
    db.then((value) =>
        value.delete('items', where: 'dvancedDist = ?', whereArgs: [dist]));
  }
}
