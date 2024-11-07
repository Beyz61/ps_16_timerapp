import 'package:flutter/material.dart';
import 'package:ps_16_timerapp/stopwatch_screen.dart';
import 'package:ps_16_timerapp/timer_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {    // statefull statt stateless
  const BottomNavigationBarScreen({
    super.key,
  });

  @override
  State<BottomNavigationBarScreen> createState() =>
   _BottomNavigationBarScreenState();
}
class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

int currentIndex = 0;
late List <Widget> widgets;
 @override
 void initState() {
    super.initState();
    widgets = [
      const StopwatchScreen(),
      const TimerScreen(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: NavigationBar( 
        selectedIndex: currentIndex,
        onDestinationSelected: (index){
          currentIndex = index;
          setState(() {
          });
        },
        destinations: const [
        NavigationDestination(icon: Icon(Icons.alarm),label: "Stopwatch"),
        NavigationDestination(icon: Icon(Icons.timer),label: "Timer"),
      ],
    ),
      body: widgets[currentIndex],
    );
  }
}