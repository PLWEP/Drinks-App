import 'package:flutter/material.dart';
import 'package:drinksapp/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Drinks App',
      home: MainScreen(),
    );
  }
}
