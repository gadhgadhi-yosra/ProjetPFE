import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class SignInOption extends StatelessWidget {
  final String textBefore;
  final String actionText;
  final VoidCallback onTap;

  const SignInOption({
    Key? key,
    required this.textBefore,
    required this.actionText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textBefore,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: "Montserrat",
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
