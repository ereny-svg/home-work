
import 'package:assignment13/gender/gender_selection_item.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool onclicked = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onclicked = true;
              setState(() {});
            },
            child: GenderSelectionItem(
              icon: Icons.male,
              text: "MALE",
              color: onclicked ? Color(0xFF090B24) : Color(0xFF17172F),
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onclicked = false;
              setState(() {});
            },
            child: GenderSelectionItem(
              icon: Icons.female,
              text: "FEMALE",
              color: !onclicked ? Color(0xFF090B24) : Color(0xFF17172F),
            ),
          ),
        ),
      ],
    );
  }
}
