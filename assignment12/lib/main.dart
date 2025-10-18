import 'package:assignment12/action_buttons_row.dart';
import 'package:assignment12/features_section.dart';
import 'package:assignment12/quick_stats_section.dart';
import 'package:assignment12/welcome_card.dart';
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
        backgroundColor: Color(0xFFFEF7FF),
        body: Padding(
          padding: const EdgeInsets.only(top: 60, right: 25, left: 25),
          child: Column(
            children: [
              WelcomeCardSection(),
              QuickStatsSection(),
              FeaturesSection(),
              ActionButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
