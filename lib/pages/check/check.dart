import 'package:fit_map/model/db/dbProvider.dart';

Future<String> check(ref) async {
  final db = await ref.read(databaseProvider);
  final result = await db.query('items');
  String response = '';
  if (result.isEmpty) {
    response = 'No data';
  } else {
    response = 'Datas';
  }
  return response;
}
