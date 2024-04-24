import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/informationClient.dart';
import 'package:piecexpresspfe/Informations/recapiltaif.dart';

import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/resuable_widgets/textFiledForm.dart';

class AdressePage extends StatefulWidget {
  const AdressePage({Key? key}) : super(key: key);

  @override
  State<AdressePage> createState() => _AdressePageState();
}

class _AdressePageState extends State<AdressePage> {
  final villeController = TextEditingController();
  final infosController = TextEditingController();
  final adressevController = TextEditingController();
  final codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Adresse',
          style: TextStyle(
              fontSize: 15,
              color: AppColors.primaryColor,
              fontFamily: 'Montsserat-Bold',
              fontWeight: FontWeight.bold),
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
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.06,
              height: screenHeight * 0.06,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PanierPiece(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    color: AppColors.primaryColor,
                    height: 1,
                    width: screenWidth / 3,
                  ),
                  Container(
                    color: Colors.grey,
                    height: 1,
                    width: screenWidth,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
              width: screenWidth * 0.4,
            ),
            const Text(
              "Adresse",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold'),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            TextFiledForm(
              controller: adressevController,
              hintText: "17 Avenue feuille d'érable Lac2",
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Ville",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold'),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            TextFiledForm(
              controller: villeController,
              hintText: 'Tunis',
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Code postale",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold'),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            TextFiledForm(
              controller: codeController,
              hintText: '2062',
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Infos complémentaires",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold'),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            TextFiledForm(
              controller: infosController,
              hintText: 'A coté de ben Yaghlene',
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: screenWidth * 0.4,
                  child: MyButton(
                    text: 'Confirmer',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RecapulatifPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                ButtonAnnuler(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InformationsPersonnelles(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
