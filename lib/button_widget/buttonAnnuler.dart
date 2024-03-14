import 'package:flutter/material.dart';

class ButtonAnnuler extends StatelessWidget {
  const ButtonAnnuler({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 2.4,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Anuuler',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
