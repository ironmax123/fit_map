import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// データベースインスタンスを管理するプロバイダー
final databaseProvider = Provider<Future<Database>>((ref) async {
  // データベースを開く、または作成する
  final databasePath = await getDatabasesPath();
  final path = join(databasePath, 'regist.db'); // データベース名を設定

  // データベースを初期化
  return openDatabase(
    path,
    version: 1, // データベースのバージョン番号
    onCreate: (db, version) async {
      // 初回作成時のテーブル作成処理
      await db.execute('''
        CREATE TABLE items(
          StartPoint TEXT,
          GoalPoint TEXT,                           
          totalDist DOUBLE,                               
        )
      ''');
    },
  );
});
void reset(ref) {
  ref.read(databaseProvider).then((db) => db.delete('items'));
}

final navigationIndexProvider = StateProvider<int>((ref) => 0);
