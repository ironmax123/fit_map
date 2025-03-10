import 'package:fit_map/model/timestamp.dart';
import 'package:fit_map/pages/map/view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

String distance = '';
Widget sheet(addressController, ref, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: GestureDetector(
            onTap: () => primaryFocus?.unfocus(),
            child: TextField(
              onChanged: (value) {
                distance = value;
              },
              keyboardType: TextInputType.number,
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'km',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () async {
              if (addressController.text.isEmpty) {
                return Navigator.pop(context);
              } else {
                final distances = double.parse(distance);
                final currentTime = DateTime.now();
                await ref.read(mapViewModelProvider.notifier).addMap({
                  'dvancedDist': distances,
                  'createdAt': TimestampConverter().toJson(currentTime)
                });
                await ref
                    .read(mapViewModelProvider.notifier)
                    .updateDist(distances);
                addressController.clear();
                Navigator.pop(context);
              }
            },
            child: const Text('登録'))
      ],
    ),
  );
}

Future<void> showAddItemSheet(
  BuildContext context,
  TextEditingController kmController,
  WidgetRef ref,
) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => FractionallySizedBox(
      heightFactor: 0.4,
      child: sheet(kmController, ref, context),
    ),
  );
}
