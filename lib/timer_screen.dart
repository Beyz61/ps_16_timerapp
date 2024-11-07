import 'package:flutter/material.dart';
import 'package:ps_16_timerapp/stopwatch_button.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 181, 209),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 46, 77),
        title: const Text("Timer",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30, 
          fontWeight: FontWeight.w700),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("15 s",
          style: TextStyle(
            fontSize: 88,
            fontWeight: FontWeight.bold,
            color:  Color.fromARGB(255, 7, 46, 77),
          ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StopwatchButton(onTap: null, buttonName: "Start", color: Colors.grey),
            StopwatchButton(onTap: null, buttonName: "Stop", color: Colors.red),
          ],),
        ],
      ),
    );
  }
}