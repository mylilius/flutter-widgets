library mylilius_widgets;

import 'package:flutter/material.dart';
import 'package:mylilius_widgets/src/theme/color_palette.dart';
import 'package:mylilius_widgets/src/theme/dark_theme.dart';
import 'package:mylilius_widgets/src/theme/light_theme.dart';

class ThemeBuilder {

  final ColorPalette _light = LightTheme();
  final ColorPalette _dark = DarkTheme();

  ThemeData build(String _paletteName) {
    late ColorPalette _palette = _dark;
    if (_paletteName == 'light') {
      _palette = _light;
    }

    ColorScheme _scheme = _buildColorScheme(_palette);

    return ThemeData.from(colorScheme: _scheme).copyWith(
      backgroundColor: _scheme.background,
      primaryColor: _scheme.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: _scheme.background
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return _scheme.secondary;
              }
              return _scheme.primary; // Use the component's default.
            },
          ),
        )
      )
    );
  }



  ColorScheme _buildColorScheme(ColorPalette _palette) {
    return ColorScheme(
        brightness: _palette.brightness == 'light' ? Brightness.light : Brightness.dark,
        primary: _buildColor(_palette.primaryColor),
        onPrimary: _buildColor('FFFFFF'),
        secondary: _buildColor(_palette.secondaryColor),
        onSecondary: _buildColor('FFFFFF'),
        error: _buildColor(_palette.red),
        onError: _buildColor('FFFFFF'),
        background: _buildColor(_palette.primaryBackground),
        onBackground: _buildColor(_palette.secondaryBackground),
        surface: _buildColor(_palette.secondaryBackground),
        onSurface: _buildColor(_palette.primaryBackground),
    );
  }

  Color _buildColor(String _hexColor) {
    if (_hexColor.contains('#')) {
      _hexColor = _hexColor.replaceAll('#', '');
    }
    return Color(int.parse('FF$_hexColor', radix: 16));
  }

}