import 'package:flutter/material.dart';

class GreenOrangeSection extends StatelessWidget {
  const GreenOrangeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(color: Color(0xFFA5D6A7), width: 180, height: 55),
            Container(height: 11, color: Color(0xFFE6F6E9), width: 180),
            Container(color: Color(0xFFA5D6A7), width: 180, height: 55),
          ],
        ),
        Container(width: 18),
        Container(color: Color(0xFFFFCC80), width: 85, height: 121),
        Container(width: 7, color: Color(0xFFFFF3DD), height: 121),
        Container(color: Color(0xFFFFCC80), width: 85, height: 121),
      ],
    );
  }
}
