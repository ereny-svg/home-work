import 'package:flutter/material.dart';

class BlueGreySection extends StatelessWidget {
  const BlueGreySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Color(0xFFE4F2FD), width: 400, height: 250),
        Container(height: 20),
        Row(
          children: [
            Container(color: Color(0xFFE0E0E0), width: 30, height: 30),
            Container(width: 11),
            Container(color: Color(0xFFE0E0E0), width: 334, height: 20),
          ],
        ),
        Container(height: 20),
        Container(color: Color(0xFFE0E0E0), width: 400, height: 2),
        Container(height: 20),
      ],
    );
  }
}
