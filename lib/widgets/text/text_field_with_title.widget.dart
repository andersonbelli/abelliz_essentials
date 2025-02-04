import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.constants.dart';
import '../../constants/padding.constants.dart';
import '../../constants/text_sizes.constants.dart';

class TextFieldWithTitleAbelliz extends StatelessWidget {
  const TextFieldWithTitleAbelliz({
    super.key,
    required this.controller,
    this.titleText = '',
    this.titleTextSize = AppTextSize.kMedium,
    this.titleTextWeight = FontWeight.w300,
    this.titleTextColor = AppColors.DARK_LIGHT,
    this.hintText = '',
    this.onChanged,
    this.maxLength = 120,
    this.hasError = false,
    this.errorText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String titleText;
  final double titleTextSize;
  final FontWeight titleTextWeight;
  final Color titleTextColor;
  final String hintText;
  final int maxLength;
  final bool hasError;
  final String errorText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (titleText.isNotEmpty)
          Text(
            titleText,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: titleTextSize,
              color: titleTextColor,
              fontWeight: titleTextWeight,
              fontStyle: FontStyle.italic,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: AppPadding.kSize24),
          child: TextField(
            cursorColor: Theme.of(context).colorScheme.outline,
            cursorErrorColor: Theme.of(context).colorScheme.outline,
            maxLength: maxLength,
            obscureText: obscureText,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              counterText: '',
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColors.GRAY,
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: hasError
                      ? Theme.of(context).colorScheme.error
                      : AppColors.DARK_LIGHT.withValues(
                          alpha: 0.6,
                        ),
                  width: 1.5,
                ),
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.GRAY),
              ),
              errorText: errorText,
            ),
            keyboardType: keyboardType,
            controller: controller,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
