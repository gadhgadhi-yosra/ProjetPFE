import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class CondtionsGenerales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Condtions Generales',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: 'Montserrat-Meduim',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.04,
            height: screenHeight * 0.04,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          "Pour les conditions générales d'utilisation de l'application pieceXpress, elles pourraient inclure l'inscription et la connexion sécurisée, l'usage strictement personnel et non-commercial, le respect des droits de propriété intellectuelle, ainsi que l'acceptation des modalités de paiement et de livraison. Il est important que les utilisateurs lisent attentivement ces conditions pour comprendre leurs droits et leurs responsabilités lors de l'utilisation de l'application.",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: 'Montserrat-Meduim',
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
