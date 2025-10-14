import 'package:flutter/material.dart';

class PurpleSection extends StatelessWidget {
  const PurpleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 20),
        Container(
          color: Color(0xFFF3E5F6),
          child: Row(
            children: [
              Container(color: Color(0xFFE1BEE8), width: 95, height: 101),
              Container(width: 16),
              Column(
                children: [
                  Container(color: Color(0xFFCF93D9), width: 95, height: 45),
                  Container(height: 11, color: Color(0xFFE1BEE8), width: 95),
                  Container(color: Color(0xFFCF93D9), width: 95, height: 45),
                ],
              ),
              Container(width: 16),
              Container(color: Color(0xFFE1BEE8), width: 95, height: 101),
            ],
          ),
        ),
      ],
    );
  }
}
