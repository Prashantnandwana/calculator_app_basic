import 'package:flutter/material.dart';
class CalculatorView  extends StatelessWidget {
  const CalculatorView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
          TextField(
            decoration: InputDecoration(focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black
              )
            ),
              labelText: "0",
              hintText: "enter a number",hintStyle: TextStyle(color: Colors.white)
            ),
          ),
          // expand
    
          // calculator button
        ],
      ),
    );
  }
}