import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  const StopwatchButton({
    super.key, required this.onTap, required this.buttonName
  });
final void Function()? onTap;  
final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 96,
        decoration: BoxDecoration(
        border: Border.all(color:const Color.fromARGB(255, 7, 46, 77), 
        ),
        borderRadius: BorderRadius.circular(32),
        ),
        child:  Row(
          children: [
            const Expanded(child: SizedBox()),
            Text (buttonName),
            const Expanded(child: SizedBox()),
          ],
        ),
        
      ),
    );
  }
}