import 'package:flutter/material.dart';

class TealGreySection extends StatelessWidget {
  const TealGreySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Color(0xFFB2DFDC), width: 180, height: 60),

            Container(color: Color(0xFF80CBC4), width: 180, height: 60),
          ],
        ),
        Container(height: 20),
        Container(color: Color(0xFFE0E0E0), width: 400, height: 55),
      ],
    );
  }
}
