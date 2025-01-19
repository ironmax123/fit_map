// ignore_for_file: use_build_context_synchronously

import 'package:fit_map/pages/regist/logic/change.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class RegistPage extends HookWidget {
  const RegistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final direction = useState('北');
    final address = useState('');
    final TextEditingController addressController = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Text('登録', style: TextStyle(fontSize: 32))),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '住所',
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
                'ゴールを設定してください',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              onChanged: (value) {
                address.value = value;
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
                  context.goNamed('HomePage', extra: locate);
                },
                child: const Text('始める'))
          ],
        ));
  }
}
