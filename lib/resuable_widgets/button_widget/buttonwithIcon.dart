import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class MyButtonIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const MyButtonIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Container(
      height: screenHeight * 0.059,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  width: screenWidth * 0.08,
                ),
                Icon(
                  icon,
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
