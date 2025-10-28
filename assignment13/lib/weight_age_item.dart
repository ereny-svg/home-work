import 'package:flutter/material.dart';

class WeightAgeItem extends StatelessWidget {
  final String text;
  final num value;
  final Function() onChangedRemove;
  final Function() onChangedAdd;
  final IconData iconRemove;
  final IconData iconAdd;
  const WeightAgeItem({
    super.key,
    required this.text,
    required this.value,
    required this.onChangedRemove,
    required this.onChangedAdd,
    required this.iconRemove,
    required this.iconAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(text, style: TextStyle(color: Colors.grey, fontSize: 22)),
        ),
        Center(
          child: Text(
            "$value",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 50,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color(0xFF4B4E5F),
                ),
                onPressed: onChangedRemove,
                child: Center(
                  child: Icon(
                    iconRemove,
                    color: Colors.white,
                    size: 35,
                    weight: 100,
                  ),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color(0xFF4B4E5F),
                ),
                onPressed: onChangedAdd,
                child: Center(
                  child: Icon(
                    iconAdd,
                    color: Colors.white,
                    size: 35,
                    weight: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
