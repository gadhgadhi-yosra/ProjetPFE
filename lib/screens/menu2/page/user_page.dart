import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String email;
  final String image;

  const UserPage({
    Key? key,
    required this.name,
    required this.email,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          'assets/images/yos.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
