import 'package:fit_map/model/db/dbProvider.dart';
import 'package:fit_map/model/entity/regist/entity.dart';
import 'package:fit_map/pages/check/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "view_model.g.dart";

@riverpod
class CheckViewModel extends _$CheckViewModel {
  @override
  Future<CheckState> build() async {
    final db = await ref.read(databaseProvider);

    final List<Map<String, dynamic>> dbData = await db.query('items');
    final items = dbData.map((data) => RegistEntity.fromJson(data)).toList();

    return CheckState(
        StartPoint: items[0].StartPoint,
        GoalPoint: items[0].GoalPoint,
        totalDist: items[0].totalDist);
  }
}
