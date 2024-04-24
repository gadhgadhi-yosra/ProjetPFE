import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/ListeVoiture.dart';
import 'package:piecexpresspfe/resuable_widgets/rechercheCustom.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({Key? key}) : super(key: key);

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Image.asset(
            "assets/images/logo.png",
            width: screenWidth * 0.3,
            height: screenHeight * 0.2,
          ),
        ),
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
            },
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
          ),
        ],
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/menu2.png',
            width: screenWidth * 0.05,
            height: screenHeight * 0.05,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          children: [
            const RechercheCustom(
              hintText: 'Recherche une voiture',
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            VoitureListe(),
          ],
        ),
      ),
    );
  }
}
