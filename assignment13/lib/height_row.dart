import 'package:assignment13/custom_container.dart';
import 'package:assignment13/custom_slider.dart';
import 'package:assignment13/models/bmi_calculator.dart';
import 'package:flutter/material.dart';

class HeightRow extends StatefulWidget {
  final BmiCalculator bmiCalculator;
  const HeightRow({super.key, required this.bmiCalculator});

  @override
  State<HeightRow> createState() => _HeightRowState();
}

class _HeightRowState extends State<HeightRow> {
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
