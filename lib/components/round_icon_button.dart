import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.update});

  final IconData icon;
  final Function update;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: update,
      child: Icon(icon),
      shape: CircleBorder(),
      elevation: 10.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
