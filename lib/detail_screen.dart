import 'package:drinksapp/mobile/detail_screen_mobile.dart';
import 'package:drinksapp/model/drink.dart';
import 'package:drinksapp/web/detail_screen_web.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Drink drink;

  const DetailScreen({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return DetailWebPage(drink: drink);
        } else {
          return DetailMobilePage(drink: drink);
        }
      },
    );
  }
}
