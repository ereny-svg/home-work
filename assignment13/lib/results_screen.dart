import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final num currentBmi;
  final String resultText;
  final String interpretation;
  const ResultsScreen({
    super.key,
    required this.currentBmi,
    required this.resultText,
    required this.interpretation,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03051A),
      appBar: AppBar(
        backgroundColor: Color(0xFF04061D),
        foregroundColor: Colors.white,

        title: Text("Your Result", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color(0xFF17172F),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    currentBmi.toStringAsFixed(1),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      height: 1.5,
                    ),
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
