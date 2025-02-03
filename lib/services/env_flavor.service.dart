import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../constants/env_flavors.constants.dart';

abstract class EnvFlavorService {
  static String get envFlavor {
    String? flavor = 'dev';
    if (appFlavor != null && envFlavors.containsKey(appFlavor)) {
      flavor = appFlavor;
    } else {
      log('''
      \nFlavor not defined: <$appFlavor>
      Use the flag --flavor=<dev|stg|prod> to set the flavor.
      ''');
    }
    return envFlavors[flavor]!;
  }

  /// Define the [.env] file in the [pubspec.yaml] as an asset:
  ///
  /// assets:
  ///    - .env
  ///
  static Future<void> loadEnvironment(AsyncCallback loadEnv) async {
    try {
      /// await dotenv.load(fileName: envFlavor);
      await loadEnv();
    } catch (_) {
      throw Exception('''
      Error loading environment variables!
            \nThe FILE "$envFlavor" does not exist.
            Use the [sample.env] file as a reference to create a flavor:
            - dev: .env
            - stg: .env.stg
            - prod: .env.prod
            (Don't forget to reference the file in the ´pubspec.yaml´)
            ''');
    }
  }
}
