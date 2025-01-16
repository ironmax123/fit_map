import 'package:flutter/material.dart';

String distance = '';
Widget sheet(addressController) {
  return Column(
    children: [
      TextField(
        onChanged: (value) {
          distance = value;
        },
        controller: addressController,
        decoration: InputDecoration(
          labelText: 'km',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ],
  );
}

Future<void> showAddItemSheet(
  BuildContext context,
  TextEditingController kmController,
) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => FractionallySizedBox(
      heightFactor: 0.6, // 全画面の60%を使用
      child: sheet(kmController),
    ),
  );
}
