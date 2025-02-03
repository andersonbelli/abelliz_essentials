import 'package:flutter/material.dart';

import 'default_appbar_child.widget.dart';

class DefaultScaffoldAbelliz extends StatelessWidget {
  const DefaultScaffoldAbelliz({
    super.key,
    required this.child,
    this.appBarText,
    this.customAppBar,
  }) : assert(
          (appBarText != null && customAppBar == null) || (appBarText == null && customAppBar != null),
          'Either [appBarText] or [customAppBar] must be provided.',
        );

  final String? appBarText;
  final AppBar? customAppBar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarText != null
          ? AppBar(
              title: DefaultAppBarChildAbelliz(
                Text(appBarText!),
              ),
            )
          : customAppBar,
      body: child,
    );
  }
}
