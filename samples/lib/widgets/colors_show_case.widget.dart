import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/material.dart';

class ColorsShowCase extends StatelessWidget {
  const ColorsShowCase({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.inverseSurface),
        ),
      ),
    );
  }
}

List<ColorsShowCase> appColors = [
  ColorsShowCase(
    color: AppColors.GREEN,
    text: 'GREEN',
  ),
  ColorsShowCase(
    color: AppColors.RED,
    text: 'RED',
  ),
  ColorsShowCase(
    color: AppColors.CREAM,
    text: 'CREAM',
  ),
  ColorsShowCase(
    color: AppColors.DARK,
    text: 'DARK',
  ),
  ColorsShowCase(
    color: AppColors.DARK_LIGHT,
    text: 'DARK LIGHT',
  ),
  ColorsShowCase(
    color: AppColors.GRAY,
    text: 'GRAY',
  ),
  ColorsShowCase(
    color: AppColors.GRAY_LIGHT,
    text: 'GRAY LIGHT',
  ),
  ColorsShowCase(
    color: AppColors.BLUE,
    text: 'BLUE',
  ),
  ColorsShowCase(
    color: AppColors.BLUE_LIGHT,
    text: 'BLUE LIGHT',
  ),
  ColorsShowCase(
    color: AppColors.PINK,
    text: 'PINK',
  ),
  ColorsShowCase(
    color: AppColors.PURPLE,
    text: 'PURPLE',
  ),
];
