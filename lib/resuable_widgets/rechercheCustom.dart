import 'package:flutter/material.dart';

class RechercheCustom extends StatelessWidget {
  final String hintText;

  const RechercheCustom({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: Image.asset('assets/icons/search'),
        prefixIconColor: Colors.black,
        hintText: hintText,
      ),
    );
  }
}
