// ignore_for_file: unused_element

import 'package:fit_map/pages/check/check.dart';
import 'package:fit_map/pages/check/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../regist/logic/change.dart';

class CheckPage extends HookConsumerWidget {
  const CheckPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDataPresent = useState<bool>(false);
    final datas = useState<String>('');
    Future<void> getDatas() async {
      datas.value = await check(ref);
    }

    final locate = ref.watch(checkViewModelProvider).when(
          data: (data) => data.startPoint,
          loading: () => "0",
          error: (err, stack) {
            debugPrint('エラー: $err');
            return "エラーが発生しました";
          },
        );
    final locateg = ref.watch(checkViewModelProvider).when(
          data: (data) => data.goalPoint,
          loading: () => "0",
          error: (err, stack) {
            debugPrint('エラー: $err');
            return "エラーが発生しました";
          },
        );

    void loaded() async {
      if (isDataPresent.value) {
        try {
          final pin = await coordinate(locate);
          final ping = await coordinate(locateg);
          print('pin:$pin, ping:$ping');
          // ignore: use_build_context_synchronously
          context.goNamed('HomePage', extra: {'start': pin, 'goal': ping});
        } catch (e) {
          debugPrint('Error: $e');
        }
      } else {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.goNamed('regist');
        });
      }
    }

    useEffect(() {
      getDatas().then((_) {
        if (datas.value == 'Datas') {
          isDataPresent.value = true;
        }
        loaded();
      });
      return null;
    }, []);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('チェック中...'),
          ],
        ),
      ),
    );
  }
}
