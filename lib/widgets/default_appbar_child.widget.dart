import 'package:flutter/material.dart';

import '../constants/padding.constants.dart';

class DefaultAppBarChildAbelliz extends StatelessWidget {
  const DefaultAppBarChildAbelliz(
    this.child, {
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.kSize8),
          child: child,
        ),
        Divider(height: 4, color: Theme.of(context).highlightColor),
      ],
    );
  }
}
