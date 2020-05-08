import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi; //private

  /* BMI formula = Kg/m^2  where Kg = height in kilogram, m^2 = height in meters squared */
  String calculateBMI(){
    _bmi = ((weight*0.453592) / pow((height*0.0254), 2)); //conversion from Lbs to Kg and inches to meters included
    return _bmi.toStringAsFixed(1); //returns BMI with one decimal
  }

  String getResults(){
    if(_bmi >= 25) {
      return 'Overweight';
    }
    else if ( _bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      return 'You have a higher than normal body weight for your age and height.';
    }
    else if ( _bmi > 18.5) {
      return 'Your BMI result is normal for your age, height, and weight';
    }
    else {
      return 'You have a lower than normal body weight for your age and height.';
    }
  }
}