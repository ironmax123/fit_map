import 'package:fit_map/model/timestamp.dart';
import 'package:fit_map/pages/map/view_model.dart';
import 'package:flutter/material.dart';

String distance = '';
Widget sheet(addressController, ref) {
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
      ElevatedButton(
          onPressed: () async {
            final distances = int.parse(distance);
            final currentTime = DateTime.now();
            await ref.read(mapViewModelProvider.notifier).addMap({
              'dvancedDist': distances,
              'createdAt': TimestampConverter().toJson(currentTime)
            });
          },
          child: const Text('登録'))
    ],
  );
}

Future<void> showAddItemSheet(
  BuildContext context,
  TextEditingController kmController,
  ref,
) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => FractionallySizedBox(
      heightFactor: 0.6,
      child: sheet(kmController, ref),
    ),
  );
}
