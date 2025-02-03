import 'package:flutter/material.dart';

void showMessageDialogAbelliz(
  BuildContext context,
  String message, {
  Widget? title,
  List<Widget>? actionButtons,
  Widget? buttonTextWidget,
  VoidCallback? buttonAction,
}) {
  assert(
    (actionButtons == null && buttonAction != null) ||
        (actionButtons == null && buttonTextWidget != null) ||
        (actionButtons != null && buttonAction == null && buttonTextWidget == null),
    'If [actionButtons] is provided, both [buttonAction] and [buttonTextWidget] must be null. '
    'Otherwise, [buttonAction] must be provided (buttonTextWidget can be optional).',
  );

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
