import 'package:flutter/material.dart';

import '../constants/padding.constants.dart';

class DefaultAppBarTitleAbelliz extends StatelessWidget {
  const DefaultAppBarTitleAbelliz(
    this.child, {
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.kSize8),
          child: child ??
              SizedBox(
                width: double.infinity,
                child: child,
              ),
        ),
        Divider(height: 4, color: Theme.of(context).highlightColor),
      ],
    );
  }
}
