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
    });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Timer gestarte!")
      ),
    );
  }

void stopStopwatch (){
  timer.cancel();
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Timer Stop!")
      ),
  );
}

Future <void> resetStopwatch() async{                                   
   await Future.delayed(const Duration(seconds: 2));
   setState(() {
    seconds = 0;
  });
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("Timer beendet!")
      ),
  );
}



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: const Color.fromARGB(255, 147, 181, 209),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 46, 77), 
        title: const Text("Stopwatch",
        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),),),
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
            buttonName: "Start",
            color: Colors.grey,
            ),
            StopwatchButton(
            onTap: stopStopwatch, 
            buttonName: "Stop",
            color: Colors.red,
            ),
            StopwatchButton(
            onTap: resetStopwatch, 
            buttonName: "Clear",
            color: Colors.blueAccent,
            ),
          ],
        ),
       ],
      ), 
    );
  }
}
