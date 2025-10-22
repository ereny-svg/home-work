import 'package:assignment13/calculate_button.dart';
import 'package:assignment13/gender.dart';
import 'package:assignment13/height_row.dart';
import 'package:assignment13/weight_age_row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 174;

  double weight = 60;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF04061F),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 22,
                children: [
                  SizedBox(height: 22),
                  Text(
                    "BMI CALCULATOR",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gender(),
                  HeightRow(
                    height: height,
                    onHeightChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                  ),
                  WeightAgeRow(
                    onWeightChangedRemove: () {
                      if(weight>0){
                         weight--;
                      setState(() {
                        
                      });
                      }
                    },
                    weight: weight,
                    onWeightChangedAdd: () {
                      weight++;
                      setState(() {
                        
                      });
                    },
                  ),
                ],
              ),
            ),
            CalculateButton(cWeight: weight, cHeight: height),
          ],
        ),
      ),
    );
  }
}
