import 'package:flutter/material.dart';

import '../../abelliz_essentials.dart';

class SectionTitleAbelliz extends StatelessWidget {
  const SectionTitleAbelliz(
    this.title, {
    super.key,
    this.fontSize = AppTextSize.kMedium,
    this.color,
    this.fontWeight = FontWeight.w300,
    this.fontStyle = FontStyle.italic,
  });

  final String title;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final FontStyle fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
