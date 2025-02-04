import 'package:flutter/material.dart';

import '../constants/padding.constants.dart';
import '../typedefs/error_messages.typedef.dart';

class ErrorMessagesContainerAbelliz extends StatelessWidget {
  const ErrorMessagesContainerAbelliz({
    super.key,
    required this.isVisible,
    required this.errorMessagesList,
  });

  final bool isVisible;
  final ErrorMessagesMap errorMessagesList;

  @override
  Widget build(BuildContext context) {
    if (!isVisible || errorMessagesList.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(AppPadding.kSize16),
      color: Theme.of(context).focusColor,
      child: ListView(
        shrinkWrap: true,
        children: errorMessagesList.values.map((message) {
          return Text(
            '* $message',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          );
        }).toList(),
      ),
    );
  }
}
