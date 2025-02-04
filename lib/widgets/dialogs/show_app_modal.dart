import 'package:flutter/material.dart';

import '../../constants/padding.constants.dart';
import '../buttons/close_button.dart';

showAppModalAbelliz(
  BuildContext context, {
  required Widget child,
  EdgeInsets padding = const EdgeInsets.symmetric(
    vertical: AppPadding.kSize8,
    horizontal: AppPadding.kSize16,
  ),
  double heightFactor = 0.9,
  bool isScrollControlled = true,
  VoidCallback? buildFunction,
  VoidCallback? onCompleteFunction,
  Widget? title,
  bool showCloseButton = true,
}) =>
    showModalBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      builder: (context) {
        buildFunction?.call();

        return FractionallySizedBox(
          heightFactor: heightFactor,
          child: Padding(
            padding: padding,
            child: Column(
              children: [
                if (title != null || showCloseButton)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (title != null) Expanded(child: title),
                      if (showCloseButton)
                        CloseButtonAbelliz(
                          action: () => Navigator.pop(context),
                        ),
                    ],
                  ),
                Flexible(
                  child: child,
                ),
              ],
            ),
          ),
        );
      },
    ).whenComplete(() => onCompleteFunction?.call());
