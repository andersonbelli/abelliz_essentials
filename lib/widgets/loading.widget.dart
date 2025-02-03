import 'package:flutter/material.dart';

import '../constants/colors.constants.dart';

Widget loadingWidget(
  bool isLoading, {
  Color? containerColor,
  Color? spinnerColor,
  Color? spinnerBackgroundColor,
}) =>
    isLoading
        ? Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: containerColor ?? AppColors.CREAM.withValues(alpha: .7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  spinnerColor ?? AppColors.DARK_LIGHT,
                ),
                backgroundColor: spinnerBackgroundColor ?? AppColors.GREEN,
                strokeCap: StrokeCap.square,
              ),
            ),
          )
        : const SizedBox.shrink();
