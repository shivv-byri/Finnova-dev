import 'package:flutter/material.dart';

/// FINOVA brand and theme constants.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF2D7DD2);

  // Backgrounds
  static const Color darkBackground = Color(0xFF0E1119);
  static const Color darkSurface = Color(0xFF1A1F2E);
  static const Color lightBackground = Color(0xFFF0F2F7);
  static const Color lightSurface = Color(0xFFFFFFFF);

  // Text
  static const Color textDark = Color(0xFFFFFFFF);
  static const Color textLight = Color(0xFF000000);

  // Semantic
  static const Color profit = Color(0xFF22C55E);
  static const Color loss = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
}

/// Material 3 light and dark [ThemeData] for FINOVA.
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      surfaceContainerLowest: AppColors.lightBackground,
      surface: AppColors.lightSurface,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.lightBackground,
      cardTheme: CardTheme(
        color: AppColors.lightSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
      ),
    );
  }

  static ThemeData get dark {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
      surfaceContainerLowest: AppColors.darkBackground,
      surface: AppColors.darkSurface,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.darkBackground,
      cardTheme: CardTheme(
        color: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
      ),
    );
  }
}
