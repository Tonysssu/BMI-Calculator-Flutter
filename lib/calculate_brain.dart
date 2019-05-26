import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is heigher than normal, try to exercise more';
    } else if (_bmi > 18.5) {
      return 'Your BMI is perfect, good job!';
    } else {
      return 'Your BMI is lower than average level, you can eat a bit more';
    }
  }
}
