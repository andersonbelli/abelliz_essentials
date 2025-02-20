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
        CardWithVerticalTitle(
          titleColor: AppColors.ORANGE,
          titleString: 'Card Title',
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'This is a text to showcase the title of the Card Widget of the great Abelliz Essentials!',
                style: TextStyle(
                  fontSize: AppTextSize.kLarge,
                ),
                textAlign: TextAlign.end,
              ),
              Text(
                'This is a subtext to better describe the content of the Card Widget of the great Abelliz Essentials!',
                textAlign: TextAlign.end,
              ),
              Text('Last div. 0.2%'),
              Text('Last div. 0.2%'),
              Text('Last div. 0.2%'),
              ActionButtonAbelliz(
                text: 'SHOW MORE',
                onPressed: () => print(''),
                textColor: Theme.of(context).colorScheme.inverseSurface,
                borderColor: Theme.of(context).colorScheme.inverseSurface,
                backgroundColor: Theme.of(context).colorScheme.surface,
                margin: EdgeInsets.symmetric(
                  vertical: AppPadding.kSize8,
                ),
                padding: EdgeInsets.zero,
              )
            ],
          ),
        ),
        DashedDividerAbelliz(),
      ],
    );
  }
}
