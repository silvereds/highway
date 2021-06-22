// The themes of the app
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      accentColorBrightness: Brightness.light,
      // primaryColor: AppColors.colorPrimary,
      // scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Roboto',
      appBarTheme: AppBarTheme(
        elevation: 0,
        brightness: Brightness.light,
      ),
    );
  }
}
