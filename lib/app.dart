import 'package:calculator_app_basic/homeview.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title: "calculator app",
theme: ThemeData(
  primarySwatch: Colors.indigo,
),
home: HomeView(),
    );
  }
}