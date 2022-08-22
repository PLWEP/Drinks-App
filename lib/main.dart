import 'package:flutter/material.dart';
import 'package:drinksapp/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drinks App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MainScreen(),
    );
  }
}
