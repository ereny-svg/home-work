import 'package:assignment14/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
