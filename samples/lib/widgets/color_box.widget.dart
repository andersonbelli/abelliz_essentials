import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({
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
