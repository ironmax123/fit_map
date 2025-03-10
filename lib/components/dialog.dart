import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PrimaryDialog {
  static void alertDialog({
    required BuildContext context,
    required String title,
    required String content,
    required bool isClose,
    required String yesButtonText,
    required VoidCallback? yesButtonPressed,
  }) =>
      unawaited(
        showDialog(
          context: context,
          barrierDismissible: isClose,
          builder: (_) {
            if (kIsWeb || Platform.isAndroid) {
              return AlertDialog(
                title: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(content),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('いいえ'),
                  ),
                  Builder(
                    builder: (context) => TextButton(
                      onPressed: yesButtonPressed,
                      child: Text(yesButtonText),
                    ),
                  ),
                ],
              );
            }

            return CupertinoAlertDialog(
              title: Text(title, textAlign: TextAlign.center),
              content: Text(content),
              actions: [
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'いいえ',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Builder(
                  builder: (context) => CupertinoDialogAction(
                    onPressed: yesButtonPressed,
                    child: Text(yesButtonText),
                  ),
                ),
              ],
            );
          },
        ),
      );
  static void oneDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String yesButtonText,
    required VoidCallback? yesButtonPressed,
    required bool isClose,
  }) =>
      unawaited(
        showDialog(
          context: context,
          builder: (_) {
            if (kIsWeb || Platform.isAndroid) {
              return AlertDialog(
                title: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(content),
                actions: [
                  Builder(
                    builder: (context) => TextButton(
                      onPressed: yesButtonPressed,
                      child: Text(yesButtonText),
                    ),
                  ),
                ],
              );
            }

            return CupertinoAlertDialog(
              title: Text(title, textAlign: TextAlign.center),
              content: Text(content),
              actions: [
                Builder(
                  builder: (context) => CupertinoDialogAction(
                    onPressed: yesButtonPressed,
                    child: Text(yesButtonText),
                  ),
                ),
              ],
            );
          },
        ),
      );
}
