import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/material.dart';

class ErrorsShowCase extends StatelessWidget {
  const ErrorsShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    final ErrorMessagesMap<int> errorMessagesMap = {
      0: 'Error message 1',
      1: 'Error message 2',
    };

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: SectionTitleAbelliz(
            '''ErrorMessagesContainer --> passing a map of Strings''',
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
        ),
        TextShadowAbelliz(
          '''ErrorMessagesMap<int> errorMessagesMap = {
                  1: 'Error message 1',
                  2: 'Error message 2',
                  }''',
          fontSize: AppTextSize.kMedium,
          textAlign: TextAlign.start,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        ErrorMessagesContainerAbelliz(
          isVisible: true,
          errorMessagesList: errorMessagesMap,
        ),
      ],
    );
  }
}
