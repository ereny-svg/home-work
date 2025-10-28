import 'package:assignment13/calculate_button.dart';
import 'package:assignment13/gender.dart';
import 'package:assignment13/height_row.dart';
import 'package:assignment13/models/bmi_calculator.dart';
import 'package:assignment13/weight_age_row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  BmiCalculator bmiCalculator = BmiCalculator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF03051A),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                color: Color(0xFF04061D),

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 20,
                  ),
                  child: Text(
                    "BMI CALCULATOR",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 20,
                  children: [
                    SizedBox(height: 12),

                    Gender(),
                    HeightRow(bmiCalculator: bmiCalculator),  
                    WeightAgeRow(bmiCalculator: bmiCalculator),
                  ],
                ),
              ),
              Spacer(flex: 1,),
             CalculateButton(bmiCalculator: bmiCalculator),
            ],
          ),
        ),
      ),
    );
  }
}
