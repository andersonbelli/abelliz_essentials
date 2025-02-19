import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/material.dart';

class TextsShowCase extends StatelessWidget {
  const TextsShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextUnderlineAbelliz(
          'Text with underline',
        ),
        DashedDividerAbelliz(),
        TextShadowAbelliz(
          'Text with shadow (default size)',
          color: Theme.of(context).colorScheme.primary,
        ),
        DashedDividerAbelliz(),
        Column(
          children: [
            TextShadowAbelliz(
              'Text kSmall',
              fontSize: AppTextSize.kSmall,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            TextShadowAbelliz(
              'Text kMedium',
              fontSize: AppTextSize.kMedium,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            TextShadowAbelliz(
              'Text kLarge',
              fontSize: AppTextSize.kLarge,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            TextShadowAbelliz(
              'Text kExtraLarge',
              fontSize: AppTextSize.kExtraLarge,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
        DashedDividerAbelliz(),
        TextFieldWithTitleAbelliz(
          titleText: 'TextFieldWithTitleAbelliz',
          hintText: 'TextFieldWithTitleAbelliz',
          controller: TextEditingController(),
        ),
        DashedDividerAbelliz(),
      ],
    );
  }
}
