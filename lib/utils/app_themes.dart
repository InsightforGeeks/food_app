import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    surface: AppColors.surfaceColor,
    background: AppColors.backgroundColor,
    onPrimary: AppColors.textColor,
    onSecondary: AppColors.textColor,
    onSurface: AppColors.textColor,
    onBackground: AppColors.textColor,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor.withOpacity(0.4),
      selectionHandleColor: AppColors.primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.surfaceColor,
    ),
    colorScheme: darkColorScheme.copyWith(secondary: AppColors.secondaryColor),
    // Customize other theme properties as needed
  );
}
