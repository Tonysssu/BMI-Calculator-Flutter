import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.text, @required this.onPress});

  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 8.0),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
