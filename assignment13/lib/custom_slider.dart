import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });
  final double height;
  final Function(double) onHeightChanged;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
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
        value: height,
        min: 100,
        max: 220,
        onChanged: onHeightChanged,
      ),
    );
  }
}
