import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.constants.dart';
import '../../../constants/padding.constants.dart';
import '../../dashed_border.widget.dart';

class RadioButtonAbelliz<T> extends StatelessWidget {
  const RadioButtonAbelliz({
    super.key,
    required this.title,
    required this.groupValue,
    required this.value,
    required this.selectedValue,
    this.activeColor = AppColors.GREEN,
    this.fillColor = AppColors.GREEN,
    this.backgroundColor,
    this.margin = const EdgeInsets.symmetric(
      horizontal: AppPadding.kSize16,
    ),
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppPadding.kSize16,
      vertical: AppPadding.kSize8,
    ),
  });

  final String title;
  final T groupValue;
  final T value;
  final ValueChanged<T?> selectedValue;
  final Color activeColor;
  final Color fillColor;
  final Color? backgroundColor;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectedValue(value),
      child: Row(
        children: [
          CupertinoRadio(
            activeColor: activeColor,
            fillColor: fillColor,
            inactiveColor: Theme.of(context).focusColor,
            value: value,
            groupValue: groupValue,
            onChanged: (value) => selectedValue(value),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: AppPadding.kSize8),
              width: double.infinity,
              margin: margin,
              child: DashedDividerAbelliz(
                dashLength: 6,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: (backgroundColor ?? AppColors.CREAM).withValues(alpha: .3),
                  ),
                  padding: padding,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
