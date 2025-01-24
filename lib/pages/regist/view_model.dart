import 'package:fit_map/model/entity/regist/entity.dart';
import 'package:fit_map/model/repo/regist/repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "view_model.g.dart";

@riverpod
class RegistViewModel extends _$RegistViewModel {
  @override
  void build() {}
  Future<void> addItem(RegistEntity item) async {
    final dbRepo = ref.read(registRepoProvider.notifier);
    dbRepo.addRgist(item.toJson());
  }
}
