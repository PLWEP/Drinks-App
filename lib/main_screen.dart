import 'package:drinksapp/mobile/main_screen_mobile.dart';
import 'package:drinksapp/web/main_screen_web.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temukan Cita Rasamu'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MainScreenMobile();
          } else if (constraints.maxWidth <= 1000) {
            return const MainScreenWeb(gridCount: 3);
          } else {
            return const MainScreenWeb(gridCount: 6);
          }
        },
      ),
    );
  }
}
