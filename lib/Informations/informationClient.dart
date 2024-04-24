import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/Adresse.dart';

import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/resuable_widgets/textFiledForm.dart';

class InformationsPersonnelles extends StatefulWidget {
  const InformationsPersonnelles({Key? key}) : super(key: key);

  @override
  State<InformationsPersonnelles> createState() =>
      _InformationsPersonnellesState();
}

class _InformationsPersonnellesState extends State<InformationsPersonnelles> {
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final adresseController = TextEditingController();
  final numeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Informations Personnelles',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: screenWidth * 0.04,
              fontFamily: 'Montsserat',
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.04,
            height: screenHeight * 0.04,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PanierPiece()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              width: screenWidth * 0.4,
              height: screenHeight * 0.03,
            ),
            const Text(
              "Nom",
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
              controller: nomController,
              hintText: "Gadhgadhi",
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Prénom",
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
              controller: prenomController,
              hintText: 'Yosra',
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Adresse Email",
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
              controller: adresseController,
              hintText: 'gadhgadhiyosra2@gmail.com',
              obsureText: false,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            const Text(
              "Numero de téléphone",
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
              controller: numeroController,
              hintText: '93541458',
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
                    text: 'Suivant',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdressePage()),
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
                          builder: (context) => const PanierPiece()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
