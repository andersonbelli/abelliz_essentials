import 'package:flutter/material.dart';

import '../../constants/colors.constants.dart';

class AppCloseButtonAbelliz extends StatelessWidget {
  const AppCloseButtonAbelliz({
    super.key,
    required this.action,
  });

  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close,
        color: Theme.of(context).colorScheme.inverseSurface,
        shadows: [
          BoxShadow(
            color: AppColors.DARK.withValues(alpha: .3),
            blurRadius: 0.4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      onPressed: action ?? () => Navigator.pop(context),
    );
  }
}
