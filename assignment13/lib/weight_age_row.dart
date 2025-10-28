import 'package:assignment13/custom_container.dart';
import 'package:assignment13/models/bmi_calculator.dart';
import 'package:assignment13/weight_age_item.dart';
import 'package:flutter/material.dart';

class WeightAgeRow extends StatefulWidget {
  final BmiCalculator bmiCalculator;
  const WeightAgeRow({super.key, required this.bmiCalculator});

  @override
  State<WeightAgeRow> createState() => _WeightAgeRowState();
}

class _WeightAgeRowState extends State<WeightAgeRow> {
  int age = 18;
  double weight = 60;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomContainer(
            color: Color(0xFF17172F),
            child: WeightAgeItem(
              text: "WEIGHT",
              value: weight,
              onChangedRemove: () {
                if (weight > 0) {
                  setState(() {
                    num w = weight--;
                   widget.bmiCalculator.weight =w;
                  });
                }
              },
              onChangedAdd: () {
                if (weight > 0) {
                  setState(() {
                    num cw = weight++;
                    widget.bmiCalculator.weight = cw;
                  });
                }
              },
              iconRemove: Icons.remove,
              iconAdd: Icons.add,
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          child: CustomContainer(
            color: Color(0xFF17172F),
            child: WeightAgeItem(
              text: "AGE",
              value: age,
              onChangedRemove: () {
                if (age > 0) {
                  age--;
                  setState(() {});
                }
              },
              onChangedAdd: () {
                age++;
                setState(() {});
              },
              iconRemove: Icons.remove,
              iconAdd: Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
