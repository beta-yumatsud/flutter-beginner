import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

ThemeData changeCustomThemeData() {
  return ThemeData.dark().copyWith(
    primaryColor: Color(0xFF0A0E21),
    scaffoldBackgroundColor: Color(0xFF0A0E21),
  );
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: changeCustomThemeData(),
      home: InputPage(),
    );
  }
}
