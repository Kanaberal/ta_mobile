import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightcode";
LightcodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightcodeColors> _supportedCustomColor = {
    'lightcode': LightcodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightcode': ColorSchemes.lightCodeColorScheme,
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightcode colors for the current theme.
  LightcodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightcodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme = _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onPrimaryContainer.withOpacity(1),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 3,
        space: 3,
        color: colorScheme.onPrimaryContainer.withOpacity(1),
      ),
    );
  }

  /// Returns the lightcode colors for the current theme.
  LightcodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.amber600,
          fontSize: 64,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 48,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w800,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 36,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.blueA100,
          fontSize: 30,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 25,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray40001,
          fontSize: 11,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 16,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.deepPurple700,
          fontSize: 15,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFF908FF2),
    primaryContainer: Color(0xFF013D5D),
    secondaryContainer: Color(0xFFFF9AC5),
    errorContainer: Color(0x1E2264E5),
    onError: Color(0x71A989DE),
    onErrorContainer: Color(0xFF0F044C),
    onPrimary: Color(0xFF181718),
    onPrimaryContainer: Color(0xB2FFFFFF),
    onSecondaryContainer: Color(0xFF241957),
  );
}

/// Class containing custom colors for a lightcode theme.
class LightcodeColors {
  // Amber
  Color get amber600 => Color(0xFFF9B208);

  // Black
  Color get black900 => Color(0xFF000000);

  // Blue
  Color get blue200 => Color(0xFFASCBFF);
  Color get blue400 => Color(0xFF549EF3);
  Color get blue700 => Color(0xFF3190C1);
  Color get blueA100 => Color(0xFF79ACF3);
  Color get blueA200 => Color(0xFF468CE7);
  Color get blueA20001 => Color(0xFF407BFF);
  Color get blueA20002 => Color(0xFF458BE7);
  Color get blueA20003 => Color(0xFF4285F4);
  Color get blueA20004 => Color(0xFF458BE6);
  Color get blueA20005 => Color(0xFF4A85F9);
  Color get blueA20006 => Color(0xFF5092E9);

  // BlueGray
  Color get blueGray300 => Color(0xFFA1A8B5);
  Color get blueGray400 => Color(0xFF868EA0);
  Color get blueGray40001 => Color(0xFF888888);
  Color get blueGray60019 => Color(0x19596078);
  Color get blueGray700 => Color(0xFF464F60);
  Color get blueGray70001 => Color(0xFF494D57);
  Color get blueGray70002 => Color(0xFF54436B);
  Color get blueGray70003 => Color(0xFF464E60);
  Color get blueGray800 => Color(0xFF484D55);
  Color get blueGray80001 => Color(0xFF474B51);

  // DeepOrange
  Color get deepOrange400 => Color(0xFFFF7F4C);
  Color get deepOrangeA100 => Color(0xFFFFA283);

  // DeepPurple
  Color get deepPurple100 => Color(0xFFD6CBFC);
  Color get deepPurple50 => Color(0xFFE2DAFD);
  Color get deepPurple700 => Color(0xFF3E24CA);
  Color get deepPurple70001 => Color(0xFF3D24C9);
  Color get deepPurple800 => Color(0xFF3D2C8D);

  // Gray
  Color get gray100 => Color(0xFFF4F4F4);
  Color get gray200 => Color(0xFFFOFOFO);
  Color get gray20001 => Color(0xFFE5E5E5);
  Color get gray50 => Color(0xFFEEFBFF);
  Color get gray500 => Color(0xFF9A9A9A);
  Color get gray50001 => Color(0xFFA9A196);
  Color get gray50002 => Color(0xFF949494);
  Color get gray700 => Color(0xFF5E5E5E);
  Color get gray70001 => Color(0xFF5E5E64);

  // Indigo
  Color get indigo30014 => Color(0x147281DF);
  Color get indigo500 => Color(0xFF2F51D4);
  Color get indigoA400 => Color(0xFF3957ED);
  Color get indigoA70033 => Color(0x330047FF);

  // LightBlue
  Color get lightBlue200 => Color(0xFF7EC9F5);
  Color get lightBlue50 => Color(0xFFDFF3FF);
  Color get lightBlue5001 => Color(0xFFDAF5FE);
  Color get lightBlueA200 => Color(0xFF3ED5FC);

  // Pink
  Color get pink20000 => Color(0x00FF95C5);
  Color get pink300 => Color(0xFFFF61A4);

  // Red
  Color get redA200 => Color(0xFFFE544E);

  // Teal
  Color get teal50 => Color(0xFFDFF0F4);
}
