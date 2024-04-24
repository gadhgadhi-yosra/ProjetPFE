import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class AproposPage1 extends StatelessWidget {
  const AproposPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'A propos',
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(
          "L'application mobile 'pieceXpress' est une plateforme dédiée à la facilitation de l'achat de pièces automobiles. Elle offre une interface conviviale qui permet aux utilisateurs de trouver rapidement et facilement les pièces nécessaires pour différents modèles de voitures. Avec des fonctionnalités comme la connexion sécurisée, la vérification par code OTP et des recommandations personnalisées, l'application promet une expérience d'achat agréable et efficace. La présence d'un système de filtres permet une recherche précise par catégorie de pièces, et l'option de visualisation des produits avec leurs prix et caractéristiques détaillés rend le processus de sélection transparent. En résumé, pieceXpress est conçue pour être une solution tout-en-un pour les besoins en pièces automobiles des utilisateurs, simplifiant la recherche, la sélection et l'achat de pièces de qualité avec une promesse de livraison rapide.",
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
