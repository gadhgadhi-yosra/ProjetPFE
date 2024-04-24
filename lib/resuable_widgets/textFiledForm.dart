import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class TextFiledForm extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsureText;

  const TextFiledForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.tertiaryColor,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.tertiaryColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.tertiaryColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
