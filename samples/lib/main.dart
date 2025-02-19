import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samples/widgets/dialogs_show_case.widget.dart';
import 'package:samples/widgets/github.widget.dart';
import 'package:samples/widgets/radio_group_show_case.widget.dart';
import 'package:samples/widgets/texts_show_case.widget.dart';

import 'widgets/colors_show_case.widget.dart';

import 'package:samples/theme.controller.dart';

final themeController = ThemeController();

void main() {
  runApp(
    ListenableBuilder(
      listenable: themeController,
      builder: (context, _) => MaterialApp(
        localizationsDelegates: const [
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
        ],
        theme: AppColors.lightTheme,
        darkTheme: AppColors.darkModeTheme,
        themeMode: themeController.themeMode,
        home: const App(),
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// Radio settings
  List<String> radioOptions = ['option 1', 'option 2', 'option 3'];
  String selectedRadioOption = 'option 1';
  void selectRadioOption(String? value) => setState(() {
        if (value != null) selectedRadioOption = value;
      });

  /// Loading settings
  bool isLoading = true;
  toggleLoading() => setState(() {
        isLoading = !isLoading;
      });

  @override
  Widget build(BuildContext context) {
    return DefaultScaffoldAbelliz(
      customAppBar: AppBar(
        forceMaterialTransparency: true,
        title: const DefaultAppBarTitleAbelliz(
          Text(
            'This is the Default App Bar title',
            textAlign: TextAlign.center,
          ),
        ),
        leading: IconButton.outlined(
          onPressed: themeController.toggleThemeMode,
          icon: Icon(
            themeController.themeMode == ThemeMode.dark //
                ? Icons.dark_mode_outlined
                : Icons.wb_sunny_outlined,
          ),
        ),
      ),
      isTransparent: true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.kSize24),
          child: Column(
            children: [
              TextsShowCase(),
              DialogsShowCase(),
              RadioGroupShowCase(
                radioOptions: radioOptions,
                selectedRadioOption: selectedRadioOption,
                selectRadioOption: selectRadioOption,
              ),
              Row(
                children: [
                  SectionTitleAbelliz(
                    'CloseButtonAbelliz  -->',
                  ),
                  Builder(builder: (context) {
                    return CloseButtonAbelliz(
                      action: () => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Close button pressed'),
                        ),
                      ),
                    );
                  }),
                ],
              ),
              DashedDividerAbelliz(),
              Row(
                children: [
                  ActionButtonAbelliz(
                    text: 'toggle loading',
                    onPressed: toggleLoading,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  SizedBox.square(
                    dimension: 60,
                    child: loadingWidgetAbelliz(isLoading),
                  ),
                ],
              ),
              DashedDividerAbelliz(),
              DashedDividerAbelliz(),
              SizedBox(
                width: double.infinity,
                child: SectionTitleAbelliz(
                  'Available colors -> AppColors.[COLOR]',
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: appColors,
                ),
              ),
              SizedBox(
                height: 60,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (ctx, index) {
                          return appColors[index];
                        },
                        childCount: appColors.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: appColors.length,
                  itemBuilder: (context, index) => appColors[index],
                ),
              ),
              DashedDividerAbelliz(),
              GitHub()
            ],
          ),
        ),
      ),
    );
  }
}
