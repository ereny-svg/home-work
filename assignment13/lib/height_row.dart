import 'package:flutter/material.dart';

class HeightRow extends StatefulWidget {
  double height;
  ValueChanged<double> onHeightChanged;

  HeightRow({super.key, required this.height, required this.onHeightChanged});

  @override
  State<HeightRow> createState() => _HeightRowState();
}

class _HeightRowState extends State<HeightRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF17172F),
      ),
      height: 170,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 12),
          Text("HEIGHT", style: TextStyle(color: Colors.grey, fontSize: 22)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.height.toInt()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Text("cm", style: TextStyle(color: Colors.grey, fontSize: 22)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xff8d8e98),
                activeTrackColor: Colors.white,
                thumbColor: Color(0xffeb1555),
                overlayColor: Color(0x29eb1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                trackHeight: 2,
              ),
              child: Slider(
                value: widget.height,
                min: 100,
                max: 220,
                onChanged: widget.onHeightChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
