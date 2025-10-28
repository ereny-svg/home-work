import 'package:assignment13/models/bmi_calculator.dart';
import 'package:assignment13/results_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
 final BmiCalculator bmiCalculator;
  const CalculateButton({super.key, required this.bmiCalculator});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        SizedBox(height: 35),
        GestureDetector(
          onTap: () {
            num bmi = bmiCalculator.CalculteBmi();
            String resultText;
            String interpretation;

            if (bmi < 18.5) {
              resultText = "Underweight";
              interpretation =
                  "You have a lower than normal body weight. Try to eat more.";
            } else if (bmi < 25) {
              resultText = "Normal";
              interpretation = "You have a normal body weight. Good job!";
            } else if (bmi < 30) {
              resultText = "Overweight";
              interpretation =
                  "You have a higher than normal body weight. Try to exercise more.";
            } else {
              resultText = "Obese";
              interpretation =
                  "You have obesity. Consult a healthcare provider.";
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsScreen(
                  currentBmi: bmi,
                  resultText: resultText,
                  interpretation: interpretation,
                ),
              ),
            );
          },
          child: Container(
            height: 65,
            color: Color(0xFFED0D54),
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
