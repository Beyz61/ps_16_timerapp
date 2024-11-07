import 'package:flutter/material.dart';
import 'package:ps_16_timerapp/bottom_navigation_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarScreen(),
    );
  }
}
