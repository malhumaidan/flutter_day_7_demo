import 'package:day_7/FirstPage.dart';
import 'package:day_7/Register.dart';
import 'package:day_7/SecondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}
