import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFF090B24),
            ),
            height: 170,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.male,
                  color: Colors.white,
                  size: 95,
                  fontWeight: FontWeight.w700,
                ),
                Text(
                  "MALE",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFF17172F),
            ),
            height: 170,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.female,
                  color: Colors.white,
                  size: 95,
                  fontWeight: FontWeight.w700,
                ),
                Text(
                  "FEMALE",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
