import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/cupertino.dart';

class DialogsShowCase extends StatelessWidget {
  const DialogsShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleAbelliz(
          'Dialog',
        ),
        ActionButtonAbelliz(
          text: 'Click to open Dialog',
          onPressed: () => showMessageDialogAbelliz(
            context,
            title: Text('showMessageDialogAbelliz'),
            'This is a dialog opened from the Action button :)',
          ),
        ),
        SectionTitleAbelliz(
          'Modal',
        ),
        ActionButtonAbelliz(
          text: 'Click to open Modal',
          onPressed: () async => await showAppModalAbelliz(
            context,
            title: TextShadowAbelliz(
              'showAppModalAbelliz',
              fontSize: AppTextSize.kMedium,
              color: AppColors.PINK,
            ),
            child: SizedBox.expand(
              child: Column(
                children: [
                  Text(
                    'asd',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        DashedDividerAbelliz(),
      ],
    );
  }
}
