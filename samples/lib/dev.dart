import 'package:flutter/material.dart';

/// This Widget is used to test [Essential] widgets that are in development or being tested
class Dev extends StatelessWidget {
  const Dev({super.key});

  static const route = '/dev';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Testing specific widget')),
      body: Column(
        children: [
          Text('asd'),
        ],
      ),
    );
  }
}
