import 'package:flutter/material.dart';

class LoveButton extends StatefulWidget {
  const LoveButton({Key? key}) : super(key: key);

  @override
  LoveButtonState createState() => LoveButtonState();
}

class LoveButtonState extends State<LoveButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLove ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isLove = !isLove;
        });
      },
    );
  }
}
