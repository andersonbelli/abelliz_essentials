import 'package:flutter/material.dart';

import '../abelliz_essentials.dart';

class CardWithVerticalTitle extends StatelessWidget {
  const CardWithVerticalTitle({
    super.key,
    required this.titleString,
    required this.titleColor,
    required this.content,
  });

  final String titleString;
  final Color titleColor;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: AppPadding.kSize8,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppPadding.kSize8,
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppPadding.kSize8),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(85),
          ),
        ),
        contentPadding: const EdgeInsets.only(
          right: AppPadding.kSize16,
        ),
        tileColor: Theme.of(context).colorScheme.surface,
        titleAlignment: ListTileTitleAlignment.center,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 20,
          children: [
            _CardTitle(titleString, titleColor),
            Flexible(child: content),
          ],
        ),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle(
    this.titleString,
    this.titleColor,
  );

  final String titleString;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 120,
        maxHeight: 220,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.kSize8,
      ),
      decoration: BoxDecoration(
        color: titleColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(AppPadding.kSize8),
          bottomRight: Radius.circular(AppPadding.kSize8),
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          titleString.toUpperCase(),
          semanticsLabel: titleString,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppTextSize.kLarge,
            color: Theme.of(context).colorScheme.surface,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
