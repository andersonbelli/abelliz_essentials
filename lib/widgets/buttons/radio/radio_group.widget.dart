import 'package:flutter/material.dart';

import '../../text/section_title.widget.dart';
import 'radio_button.widget.dart';

class RadioGroupAbelliz<T> extends StatelessWidget {
  RadioGroupAbelliz({
    super.key,
    this.titleWidget,
    this.titleText,
    required this.listOfRadioButtons,
  }) {
    assert(
      (titleWidget == null && titleText != null) ||
          (titleWidget == null && titleText != null) ||
          (titleWidget == null && titleText == null),
      'Either [titleWidget] or [titleText] or none should be provided, not both',
    );
  }

  final Widget? titleWidget;
  final String? titleText;
  final List<RadioButtonAbelliz<T>> listOfRadioButtons;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (titleWidget != null) titleWidget!,
        if (titleText != null) SectionTitleAbelliz(titleText!),
        ...listOfRadioButtons,
      ],
    );
  }
}
