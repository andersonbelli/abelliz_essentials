import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

import '../constants/colors.constants.dart';
import '../constants/padding.constants.dart';

class DashedDividerAbelliz extends StatelessWidget {
  const DashedDividerAbelliz({
    super.key,
    this.height = 0.5,
    this.padding = AppPadding.kSize8,
    this.dashLength = 10,
    this.borderWidth = 1,
    this.borderColor = AppColors.DARK_LIGHT,
    this.child = const SizedBox.shrink(),
  });

  final double height;
  final double padding;
  final double dashLength;
  final Color borderColor;
  final double borderWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: child == const SizedBox.shrink() ? height : null,
      margin: const EdgeInsets.symmetric(
        horizontal: AppPadding.kSize8,
      ),
      decoration: BoxDecoration(
        border: DashedBorder.fromBorderSide(
          dashLength: dashLength,
          side: BorderSide(
            color: borderColor.withValues(alpha: .3),
            width: borderWidth,
          ),
        ),
      ),
      child: child,
    );
  }
}
