import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0,
    ),
    primaryColor: kPrimaryColor,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
