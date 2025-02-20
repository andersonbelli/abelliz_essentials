import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/cupertino.dart';

class RadioGroupShowCase extends StatelessWidget {
  const RadioGroupShowCase({
    super.key,
    required this.radioOptions,
    required this.selectedRadioOption,
    required this.selectRadioOption,
  });

  final List<String> radioOptions;
  final String selectedRadioOption;
  final void Function(String? value) selectRadioOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
