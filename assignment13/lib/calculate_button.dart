import 'package:assignment13/results_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  double cHeight ;
  double cWeight ;
   CalculateButton({super.key,required this.cHeight,required this.cWeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        GestureDetector(
          onTap: () {
            double bmi = cWeight / ((cHeight / 100) * (cHeight / 100));

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultsScreen(bmi: bmi,)),
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
