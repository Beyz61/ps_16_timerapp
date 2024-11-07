import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ps_16_timerapp/stopwatch_button.dart';

class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({super.key});

  @override
  State<StopwatchScreen> createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {

  int seconds = 0;
  late Timer timer;

  
  void startStopwatch(){
    timer = Timer.periodic(const Duration(seconds: 1),    
    (timer){
      setState(() {
        seconds ++;
      });
    }
    
    );
  }

void stopStopwatch (){
  timer.cancel();
}

void resetStopwatch(){
  setState(() {
    seconds = 0;
  });
}



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 46, 77), 
        title: const Text("Stopwatch",
        style: TextStyle(color: Colors.white),),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(
          "$seconds s", style: const TextStyle(
            fontSize: 80,
            color: Color.fromARGB(255, 7, 46, 77),
            fontWeight: FontWeight.w700,
          ),
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StopwatchButton(
            onTap: startStopwatch,
            buttonName: "Start"
            ),
            StopwatchButton(
            onTap: stopStopwatch, 
            buttonName: "Stop"
            ),
            StopwatchButton(
            onTap: resetStopwatch, 
            buttonName: "Clear"
            ),
          ],
        ),
       ],
      ), 
    );
  }
}
