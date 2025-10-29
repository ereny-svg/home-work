import 'package:assignment13/components/custom_container.dart';
import 'package:flutter/material.dart';

class GenderSelectionItem extends StatelessWidget {
  const GenderSelectionItem({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final IconData icon;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 95,
            fontWeight: FontWeight.w700,
          ),
          Text(text, style: TextStyle(color: Colors.grey, fontSize: 22)),
        ],
      ),
    );
  }
}
