import 'package:assignment11/blue_grey_section.dart';
import 'package:assignment11/green_orange_section.dart';
import 'package:assignment11/purple_section.dart';
import 'package:assignment11/teal_grey_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            BlueGreySection(),
            GreenOrangeSection(),
            PurpleSection(),
            TealGreySection(),
            ]),
        ),
      ),
    );
  }
}
