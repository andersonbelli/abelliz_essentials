import 'package:flutter/material.dart';

void showMessageDialogAbelliz(
  BuildContext context,
  String message, {
  Widget? title,
  List<Widget>? actionButtons,
  Widget? buttonTextWidget,
  VoidCallback? buttonAction,
}) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: title ?? const SizedBox.shrink(),
      content: Text(message),
      actions: actionButtons ??
          <Widget>[
            TextButton(
              onPressed: buttonAction ?? () => Navigator.of(ctx).pop(),
              child: buttonTextWidget ?? const Text('OK'),
            ),
          ],
    ),
  );
}
