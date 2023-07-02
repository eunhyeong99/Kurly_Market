import 'package:flutter/material.dart';
import 'package:market_kurly/screens/details/details_screen.dart';
import 'package:market_kurly/screens/main_screens.dart';
import 'package:market_kurly/screens/singin/signin_screen.dart';
import 'package:market_kurly/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};
