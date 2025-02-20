/// [Small - 2 | Medium - 4 | Large - 6 | ExtraLarge - 8] * textScaleFactor (4.0)
abstract class AppTextSize {
  static const double textScaleFactor = 4.0;

  /// Represents [2 * textScaleFactor].
  static const double kSmall = 2 * textScaleFactor;

  /// Represents [4 * textScaleFactor].
  static const double kMedium = 4 * textScaleFactor;

  /// Represents [6 * textScaleFactor].
  static const double kLarge = 6 * textScaleFactor;

  /// Represents [8 * textScaleFactor].
  static const double kExtraLarge = 8 * textScaleFactor;
}
