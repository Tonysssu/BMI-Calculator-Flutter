import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/calculate_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.BMIresult,
      @required this.resultText,
      @required this.resultInterp});

  final String BMIresult;
  final String resultText;
  final String resultInterp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result ',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusable_card(
              color: kActiveCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(BMIresult, style: kBMITextStyle),
                  Text(resultInterp, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
