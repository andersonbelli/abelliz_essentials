import 'dart:io';

abstract class LanguageService {
  String get defaultLocale => Platform.localeName;

  Future<String> preferredLanguage() async => defaultLocale.substring(0, 2);

  Future<void> updatePreferredLanguage(String language);
}
