import 'package:flutter/material.dart';

import '../../constants/colors.constants.dart';

class TextUnderlineAbelliz extends StatelessWidget {
  const TextUnderlineAbelliz(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.textSize = 18,
    this.underlineColor = AppColors.GREEN,
    this.underlineThickness = 4.0,
  });

  final String text;
  final FontWeight fontWeight;
  final double textSize;
  final Color underlineColor;
  final double underlineThickness;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: 2,
        fontSize: textSize,
        fontWeight: fontWeight,
        shadows: [
          Shadow(
            offset: const Offset(0, -10),
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
        ],
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: underlineColor,
        decorationThickness: underlineThickness,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
