import 'package:flutter/material.dart';

class WeightAgeRow extends StatefulWidget {
  final ValueChanged<double> onWeightChanged;
  const WeightAgeRow({super.key, required this.onWeightChanged});

  @override
  State<WeightAgeRow> createState() => _WeightAgeRowState();
}

class _WeightAgeRowState extends State<WeightAgeRow> {
  double weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFF17172F),
            ),
            height: 170,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    "WEIGHT",
                    style: TextStyle(color: Colors.grey, fontSize: 22),
                  ),
                ),
                Center(
                  child: Text(
                    "$weight",
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
                        onPressed: () {
                          if (weight > 1) {
                            weight--;
                            setState(() {});
                            widget.onWeightChanged(weight);
                          }
                        },
                        child: Center(
                          child: Icon(
                            Icons.remove,
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
                        onPressed: () {
                          weight++;
                          setState(() {});
                          widget.onWeightChanged(weight);
                        },
                        child: Center(
                          child: Icon(
                            Icons.add,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    "AGE",
                    style: TextStyle(color: Colors.grey, fontSize: 22),
                  ),
                ),
                Center(
                  child: Text(
                    "$age",
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
                        onPressed: () {
                          age--;
                          setState(() {});
                        },
                        child: Center(
                          child: Icon(
                            Icons.remove,
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
                        onPressed: () {
                          age++;
                          setState(() {});
                        },
                        child: Center(
                          child: Icon(
                            Icons.add,
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
            ),
          ),
        ),
      ],
    );
  }
}
