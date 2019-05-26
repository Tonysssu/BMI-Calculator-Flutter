import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class card_content extends StatelessWidget {
  const card_content({@required this.icon, @required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
