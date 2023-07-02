import 'package:flutter/material.dart';
import 'package:market_kurly/constants.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const DefaultButton({
    this.text,
    this.press,
    this.color = kPrimaryColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(16.0),
      ),
      onPressed: press,
      child: Center(
        child: Text(text ?? ""),
      ),
    );
  }
}
