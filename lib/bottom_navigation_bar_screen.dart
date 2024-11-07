import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {    // statefull statt stateless
  const BottomNavigationBarScreen({
    super.key,
  });

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

int currentIndex = 0;
late List <Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: NavigationBar( destinations: const [
        NavigationDestination(icon: Icon(Icons.alarm),label: "Stopwatch"),
        NavigationDestination(icon: Icon(Icons.timer),label: "Timer"),
      ],
    ),
      body: widgets[currentIndex],
    );
  }
}