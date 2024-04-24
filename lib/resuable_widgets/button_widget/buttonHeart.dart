import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isPressed ? AppColors.primaryColor : AppColors.tertiaryColor,
      ),
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
    );
  }
}
