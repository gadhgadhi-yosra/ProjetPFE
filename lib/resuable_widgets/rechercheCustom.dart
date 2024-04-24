import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class RechercheCustom extends StatelessWidget {
  final String hintText;

  const RechercheCustom({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Container(
      width: screenWidth * 0.8,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.tertiaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.tertiaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/icons/search.png',
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
          ),
          prefixIconColor: AppColors.primaryColor,
          hintText: hintText,
        ),
      ),
    );
  }
}
