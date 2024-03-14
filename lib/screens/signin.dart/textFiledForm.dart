import 'package:flutter/material.dart';

class TextFiledForm extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsureText;
  final IconData? icon;

  const TextFiledForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsureText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 156, 153, 153)),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
