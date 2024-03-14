import 'package:flutter/material.dart';

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
        color:
            isPressed ? Colors.black : const Color.fromARGB(255, 236, 235, 235),
      ),
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
    );
  }
}
