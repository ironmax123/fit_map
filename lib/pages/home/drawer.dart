import 'package:fit_map/model/db/dbProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EndDrawer extends HookConsumerWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 64,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'データ削除',
                  style: const TextStyle(fontSize: 32),
                ),
                Row(
                  children: [
                    const Icon(Icons.delete_forever_sharp),
                    TextButton(
                      onPressed: () async {
                        reset(ref);
                        context.goNamed('regist');
                      },
                      child: const Text(
                        'リセット',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
