import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

import '../../db/dbProvider.dart';

part 'repo.g.dart';

@riverpod
class RegistRepo extends _$RegistRepo {
  Future<Database> get db => ref.read(databaseProvider);
  @override
  void build() {}

  void addRgist(Map<String, dynamic> item) async {
    final db = await this.db;
    await db.insert('items', item);
  }

  void updateDist(double total) async {
    final db = await this.db;
    await db.update('items', {'totalDist': total});
  }

  Future<Map<String, dynamic>> getRegist() async {
    final db = await this.db;
    final List<Map<String, dynamic>> dbData = await db.query('items');
    return dbData.first;
  }
}
