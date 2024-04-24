import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class ButtonAnnuler extends StatelessWidget {
  const ButtonAnnuler({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Container(
      height: screenHeight * 0.069,
      width: screenWidth / 2.4,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Anuuler',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
