import 'dart:html' as html;

import 'package:abelliz_essentials/abelliz_essentials.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GitHub extends StatelessWidget {
  const GitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
