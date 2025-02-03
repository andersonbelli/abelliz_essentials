import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.constants.dart';

class TextFieldWithTitleAbelliz extends StatelessWidget {
  const TextFieldWithTitleAbelliz({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.maxLength = 120,
    this.hasError = false,
    this.errorText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
  });

  final int maxLength;
  final String hintText;
  final bool hasError;
  final String errorText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
