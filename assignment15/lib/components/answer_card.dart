import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final Function() onClicked;
  const AnswerCard({
    required this.text,
    required this.color,
    required this.icon,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Row(
          spacing: 16,
          children: [
            Icon(icon, color: Color(0xFF2B0063), size: 22),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF2B0063),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
