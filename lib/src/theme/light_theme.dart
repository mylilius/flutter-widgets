library mylilius_widgets;

import 'package:mylilius_widgets/src/theme/color_palette.dart';

class LightTheme extends ColorPalette {
  static const String _primary = "2E7DDE";
  static const String _secondary = "D9CB9E";
  static const String _darkBackground = "2A2C2B";
  static const String _lightBackground = "BDC3C7";
  static const String _accent = "374140";
  static const String _green = "45BF55";
  static const String _red = "CD0402";
  static const String _brightness = 'light';

  LightTheme() : super(_primary, _secondary, _lightBackground, _darkBackground, _accent, _green, _red, _brightness);

}