import 'package:flutter/material.dart';
import 'package:market_kurly/routes.dart';
import 'package:market_kurly/screens/splash/splash_screen.dart';
import 'package:market_kurly/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Market Kurly UI",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    ),
  );
}
