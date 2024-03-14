import 'package:flutter/material.dart';

class CustomCarMarks extends StatelessWidget {
  CustomCarMarks({super.key});
  final List<String> imageAssets = [
    'assets/images/golf.png',
    'assets/images/bmw.png',
    'assets/images/mercedes.png',
    'assets/images/hundai.png',
    'assets/images/tesla.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double containerWidth = screenWidth * 0.2;
    double containerHeight = containerWidth * 0.5;

    return Container(
      height: containerHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageAssets.length,
        itemBuilder: (context, index) {
          return Container(
            width: containerWidth,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 224, 224, 224),
            ),
            child: Center(
              child: Image.asset(
                imageAssets[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
