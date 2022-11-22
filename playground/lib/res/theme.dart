import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';

class AppTheme {
  const AppTheme({
    this.scaffoldBackgroundColor = Colors.white,
    this.splashColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.primaryColor = UiColor.primary,
    this.local = const Locale('ko', 'KR'),
  });

  final Color scaffoldBackgroundColor;
  final Color splashColor;
  final Color highlightColor;
  final Color primaryColor;
  final Locale local;

  ThemeData toThemeData() {
    var t = ThemeData(
      primaryColor: UiColor.primary,
      primaryColorDark: UiColor.primaryDark,
      primaryColorLight: UiColor.primaryLight,
      scaffoldBackgroundColor: UiColor.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: UiColor.white,
        foregroundColor: UiColor.black,
        elevation: 0,
        centerTitle: true,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );

    return t;
  }
}
