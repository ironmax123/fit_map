import 'package:fit_map/model/db/logDB.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'repo.g.dart';

@riverpod
class LogRepo extends _$LogRepo {
  Future<Database> get db => ref.read(logProvider);
  @override
  void build() {}

  void addLog(Map<String, dynamic> item) async {
    final db = await this.db;
    await db.insert('items', item);
  }
}
