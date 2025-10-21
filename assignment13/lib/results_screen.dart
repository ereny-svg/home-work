import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final double bmi;

  const ResultsScreen({super.key, required this.bmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04061F),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color(0xFF17172F),
              ),
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your BMI:',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "${bmi.toStringAsFixed(2)}",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
