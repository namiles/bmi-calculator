import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith( //copy with pulls styling from the dark theme, but overrides the following stuff like primary color and accent color, etc.
          primaryColor: Color(0xFF12153A),
          scaffoldBackgroundColor: Color(0xFF0A0F33),
          accentColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}