import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:abelliz_essentials/widgets/text/section_title.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:samples/dev.dart';
import 'dart:html' as html;

import 'package:samples/theme.controller.dart';

import 'widgets/color_box.widget.dart';

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
        onGenerateRoute: (RouteSettings routeSettings) => MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case Dev.route:
                return Dev();
              default:
                return App();
            }
          },
        ),
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
  selectRadioOption(String? value) => setState(() {
        if (value != null) selectedRadioOption = value;
      });

  /// Loading settings
  bool isLoading = true;
  toggleLoading() => setState(() {
        isLoading = !isLoading;
      });

  @override
  Widget build(BuildContext context) {
    final ErrorMessagesMap<int> errorMessagesMap = {
      0: 'Error message 1',
      1: 'Error message 2',
    };

    final List<ColorBox> appColors = [
      ColorBox(
        color: AppColors.GREEN,
        text: 'GREEN',
      ),
      ColorBox(
        color: AppColors.RED,
        text: 'RED',
      ),
      ColorBox(
        color: AppColors.CREAM,
        text: 'CREAM',
      ),
      ColorBox(
        color: AppColors.DARK,
        text: 'DARK',
      ),
      ColorBox(
        color: AppColors.DARK_LIGHT,
        text: 'DARK LIGHT',
      ),
      ColorBox(
        color: AppColors.GRAY,
        text: 'GRAY',
      ),
      ColorBox(
        color: AppColors.GRAY_LIGHT,
        text: 'GRAY LIGHT',
      ),
      ColorBox(
        color: AppColors.BLUE,
        text: 'BLUE',
      ),
      ColorBox(
        color: AppColors.BLUE_LIGHT,
        text: 'BLUE LIGHT',
      ),
      ColorBox(
        color: AppColors.PINK,
        text: 'PINK',
      ),
      ColorBox(
        color: AppColors.PURPLE,
        text: 'PURPLE',
      ),
    ];

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
              RadioGroupAbelliz<String>(
                titleText: 'Radio group',
                listOfRadioButtons: [
                  RadioButtonAbelliz(
                    title: radioOptions[0],
                    groupValue: selectedRadioOption,
                    selectedValue: (value) => selectRadioOption(value),
                    value: radioOptions[0],
                    backgroundColor: selectedRadioOption == radioOptions[0] ? AppColors.BLUE : null,
                  ),
                  RadioButtonAbelliz(
                    title: radioOptions[1],
                    groupValue: selectedRadioOption,
                    selectedValue: (value) => selectRadioOption(value),
                    value: radioOptions[1],
                    backgroundColor: selectedRadioOption == radioOptions[1] ? AppColors.BLUE : null,
                  ),
                  RadioButtonAbelliz(
                    title: radioOptions[2],
                    groupValue: selectedRadioOption,
                    selectedValue: (value) => selectRadioOption(value),
                    value: radioOptions[2],
                    backgroundColor: selectedRadioOption == radioOptions[2] ? AppColors.BLUE : null,
                  ),
                ],
              ),
              DashedDividerAbelliz(),
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
              SectionTitleAbelliz('Github Repository'),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'github.com/abelliz_essentials',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          html.window.open('https://github.com/andersonbelli/abelliz_essentials', 'new tab');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
