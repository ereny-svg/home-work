import 'package:assignment13/components/custom_container.dart';
import 'package:assignment13/components/custom_slider.dart';
import 'package:assignment13/models/bmi_calculator.dart';
import 'package:flutter/material.dart';

class HeightSelectionSection extends StatefulWidget {
  final BmiCalculator bmiCalculator;
  const HeightSelectionSection({super.key, required this.bmiCalculator});

  @override
  State<HeightSelectionSection> createState() => _HeightSelectionSectionState();
}

class _HeightSelectionSectionState extends State<HeightSelectionSection> {
  double height = 174;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Color(0xFF17172F),
      child: Column(
        children: [
          SizedBox(height: 12),
          Text("HEIGHT", style: TextStyle(color: Colors.grey, fontSize: 22)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "${height.toInt()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Text("cm", style: TextStyle(color: Colors.grey, fontSize: 22)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomSlider(
              height: height,
              onHeightChanged: (value) {
                setState(() {
                  height = value;
                  widget.bmiCalculator.height = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
