// ignore_for_file: use_build_context_synchronously

import 'package:fit_map/model/entity/regist/entity.dart';
import 'package:fit_map/pages/regist/logic/change.dart';
import 'package:fit_map/pages/regist/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegistPage extends HookConsumerWidget {
  const RegistPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = useState('');
    final addressG = useState('');
    final TextEditingController addressController = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Text('登録', style: TextStyle(fontSize: 32))),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'スタート',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                address.value = value;
              },
              controller: addressController,
              decoration: InputDecoration(
                labelText: '例）大阪府大阪市北区梅田３丁目１−１',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'ゴール',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              onChanged: (value) {
                addressG.value = value;
              },
              controller: addressController,
              decoration: InputDecoration(
                labelText: '例）京都府京都市下京区東塩小路釜殿町',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () async {
                  final locate = await coordinate('大阪府大阪市北区梅田３丁目１−１');
                  final locateG = await coordinate('京都府京都市下京区東塩小路釜殿町');
                  /*ref.read(registViewModelProvider.notifier).addItem(
                        RegistEntity(
                          startPoint: locate,
                          goalPoint: locateG,
                          totalDist: 0,
                        ),
                      );*/
                  context.goNamed('HomePage', extra: locate);
                },
                child: const Text('始める'))
          ],
        ));
  }
}
