import 'package:flutter/material.dart';

showAppModalAbelliz(
  BuildContext context, {
  required Widget child,
  double heightFactor = 0.9,
  bool isScrollControlled = true,
  VoidCallback? buildFunction,
  VoidCallback? onCompleteFunction,
}) =>
    showModalBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      builder: (context) {
        buildFunction?.call();

        return FractionallySizedBox(
          heightFactor: heightFactor,
          child: child,
        );
      },
    ).whenComplete(() => onCompleteFunction?.call());
