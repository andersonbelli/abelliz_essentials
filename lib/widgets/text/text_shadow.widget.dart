import 'package:flutter/material.dart';

import '../../constants/colors.constants.dart';
import '../../constants/text_sizes.constants.dart';

class TextShadowAbelliz extends StatelessWidget {
  const TextShadowAbelliz(
    this.text, {
    super.key,
    this.textAlign = TextAlign.center,
    this.color = AppColors.GREEN,
    this.weight = FontWeight.w600,
    this.fontSize = AppTextSize.kLarge,
    this.shadowOpacity = 0.8,
    this.shadowColor = AppColors.GRAY,
  });

  final String text;
  final TextAlign textAlign;
  final Color color;
  final FontWeight weight;
  final double fontSize;
  final double shadowOpacity;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: weight,
        shadows: [
          Shadow(
            offset: const Offset(0.3, 0.5),
            color: shadowColor.withValues(
              alpha: shadowOpacity,
            ),
          ),
        ],
      ),
    );
  }
}
