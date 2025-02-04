import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:abelliz_essentials/widgets/text/section_title.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
          // brightness: Brightness.dark,
          ),
      home: const App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> radioOptions = ['option 1', 'option 2', 'option 3'];
  String selectedRadioOption = 'option 1';

  selectRadioOption(String? value) => setState(() {
        if (value != null) selectedRadioOption = value;
      });

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

    return DefaultScaffoldAbelliz(
      customAppBar: AppBar(
        forceMaterialTransparency: true,
        title: const DefaultAppBarTitleAbelliz(
          Text(
            'This is the Default App Bar title',
            textAlign: TextAlign.center,
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
                  CloseButtonAbelliz(
                    action: () => print('Close button pressed'),
                  ),
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
                ),
              ),
              TextShadowAbelliz(
                '''ErrorMessagesMap<int> errorMessagesMap = {
                1: 'Error message 1',
                2: 'Error message 2',
                }''',
                fontSize: AppTextSize.kMedium,
                textAlign: TextAlign.start,
                color: AppColors.DARK,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.GREEN,
                    child: Center(child: Text('GREEN', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.RED,
                    child: Center(child: Text('RED', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.CREAM,
                    child: Center(child: Text('CREAM', style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.DARK,
                    child: Center(child: Text('DARK', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.DARK_LIGHT,
                    child: Center(child: Text('DARK LIGHT', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.GRAY,
                    child: Center(child: Text('GRAY', style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.GRAY_LIGHT,
                    child: Center(child: Text('GRAY LIGHT', style: TextStyle(color: Colors.black))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.BLUE,
                    child: Center(child: Text('BLUE', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.BLUE_LIGHT,
                    child: Center(child: Text('BLUE LIGHT', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.PINK,
                    child: Center(child: Text('PINK', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: AppColors.PURPLE,
                    child: Center(child: Text('PURPLE', style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
