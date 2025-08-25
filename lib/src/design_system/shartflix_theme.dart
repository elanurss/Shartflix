import 'package:flutter/material.dart';
import 'shartflix_colors.dart';

class ShartflixTheme {
  static ThemeData buildTheme() {
    final themeData = ThemeData(useMaterial3: true, fontFamily: 'EuclidCircularA');

    return themeData.copyWith(
      scaffoldBackgroundColor: ShartflixColors.black,
      textTheme: _buildTextTheme(themeData.textTheme),
      colorScheme: themeData.colorScheme.copyWith(primary: ShartflixColors.white, secondary: ShartflixColors.white),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return TextTheme(
      headlineLarge: const TextStyle(
        fontFamily: 'EuclidCircularA',
        fontSize: 18,
        color: ShartflixColors.white,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: const TextStyle(
        fontFamily: 'EuclidCircularA',
        fontSize: 16,
        color: ShartflixColors.white,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: const TextStyle(
        fontFamily: 'EuclidCircularA',
        fontSize: 15,
        color: ShartflixColors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: const TextStyle(
        fontFamily: 'EuclidCircularA',
        fontSize: 13,
        color: ShartflixColors.white,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: 'EuclidCircularA',
        fontSize: 12,
        color: ShartflixColors.white.withValues(alpha: 0.5),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
