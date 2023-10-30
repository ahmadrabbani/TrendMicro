import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
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
            color: colorScheme.onError,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
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
          return colorScheme.onSurface;
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
        thickness: 2,
        space: 2,
        color: colorScheme.primary,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 8.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 8.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 22.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF2072EC),
    primaryContainer: Color(0XFF1C1D23),
    secondary: Color(0XFF1C1D23),
    secondaryContainer: Color(0X902072EC),
    tertiary: Color(0XFF1C1D23),
    tertiaryContainer: Color(0X902072EC),

    // Background colors
    background: Color(0XFF1C1D23),

    // Surface colors
    surface: Color(0XFF1C1D23),
    surfaceTint: Color(0XFF0C0707),
    surfaceVariant: Color(0X902072EC),

    // Error colors
    error: Color(0XFF0C0707),
    errorContainer: Color(0XFF333333),
    onError: Color(0XFF4F4F4F),
    onErrorContainer: Color(0XA2FFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFFBDBDBD),
    onInverseSurface: Color(0XFF4F4F4F),
    onPrimary: Color(0XFF0C0707),
    onPrimaryContainer: Color(0XFFBDBDBD),
    onSecondary: Color(0XFFBDBDBD),
    onSecondaryContainer: Color(0XFF0C0707),
    onTertiary: Color(0XFFBDBDBD),
    onTertiaryContainer: Color(0XFF0C0707),

    // Other colors
    outline: Color(0XFF0C0707),
    outlineVariant: Color(0XFF1C1D23),
    scrim: Color(0XFF1C1D23),
    shadow: Color(0XFF0C0707),

    // Inverse colors
    inversePrimary: Color(0XFF1C1D23),
    inverseSurface: Color(0XFF0C0707),

    // Pending colors
    onSurface: Color(0XFFBDBDBD),
    onSurfaceVariant: Color(0XFF0C0707),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF070707);
  Color get black90001 => Color(0XFF000000);

  // BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF333439);

  // Gray
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray600 => Color(0XFF828282);
  Color get gray700 => Color(0XFF5A6071);

  // Green
  Color get green600 => Color(0XFF27AE60);

  // Indigo
  Color get indigo900 => Color(0XFF18285D);

  // Red
  Color get red500 => Color(0XFFFD3F42);
  Color get red600 => Color(0XFFEC2124);
  Color get red800 => Color(0XFFC02026);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
