import 'package:flutter/material.dart';

import '../../constants/colors.constants.dart';
import '../../constants/text_sizes.constants.dart';

class TextShadow extends StatelessWidget {
  const TextShadow({
    super.key,
    required this.text,
    this.color = AppColors.GREEN,
    this.weight = FontWeight.w600,
    this.fontSize = AppTextSize.kLarge,
    this.shadowOpacity = 0.8,
  });

  final String text;
  final Color color;
  final FontWeight weight;
  final double fontSize;
  final double shadowOpacity;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: weight,
        shadows: [
          Shadow(
            offset: const Offset(0.3, 0.5),
            color: Theme.of(context).colorScheme.inverseSurface.withValues(
                  alpha: shadowOpacity,
                ),
          ),
        ],
      ),
    );
  }
}
