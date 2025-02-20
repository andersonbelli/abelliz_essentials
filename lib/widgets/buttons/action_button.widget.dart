import 'package:flutter/material.dart';

import '../../constants/colors.constants.dart';
import '../../constants/padding.constants.dart';
import '../../constants/text_sizes.constants.dart';

class ActionButtonAbelliz extends StatelessWidget {
  const ActionButtonAbelliz({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
    this.width,
    this.margin,
    this.textColor = AppColors.DARK,
    this.backgroundColor = AppColors.GREEN,
    this.borderColor = AppColors.DARK,
    this.padding,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double? width;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          const EdgeInsets.only(
            bottom: AppPadding.kSize16,
          ),
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: AppPadding.kSize16,
            vertical: AppPadding.kSize8,
          ),
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: borderColor),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.kSize8),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: AppTextSize.kMedium,
            ),
          ),
        ),
      ),
    );
  }
}
