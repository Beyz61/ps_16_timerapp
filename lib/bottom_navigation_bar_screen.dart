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
       backgroundColor: const Color.fromARGB(255, 118, 162, 201),
        selectedIndex: currentIndex,
        onDestinationSelected: (index){
          currentIndex = index;
          setState(() {
          });
        },
        destinations: [
        NavigationDestination(icon: Icon(Icons.alarm,
        color: currentIndex == 1? const Color.fromARGB(255, 4, 25, 53): 
        const Color.fromARGB(252, 4, 25, 53)),
        label: "Stopwatch"),
        NavigationDestination(icon: Icon(Icons.timer, 
        color: currentIndex == 1? const Color.fromARGB(255, 23, 16, 57): 
        const Color.fromARGB(255, 4, 25, 53)),
        label: "Timer"),
      ],
    ),
      body: widgets[currentIndex],
    );
  }
}