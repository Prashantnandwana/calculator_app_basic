import 'package:calculator_app_basic/calculator_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        
        bottom: false, 
        child: Container(
          color: Colors.indigo,
          child: const CalculatorView(),
        ),
      ),
    );
  }
}
