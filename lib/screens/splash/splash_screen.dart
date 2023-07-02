import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';
import 'package:market_kurly/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Kurly",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  child: Text('Continue'),
                  onPressed: () {
                    _completeSplash(context, MainScreen());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => widget));
  }
}
