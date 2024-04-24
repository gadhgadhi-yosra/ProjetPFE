import 'package:flutter/material.dart';

import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/ImageSlider.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonwithIcon.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class PieceDetailsPage extends StatelessWidget {
  const PieceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Roulement de roue BMW i4',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Montserrat-Bold',
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        scrolledUnderElevation: 0,
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
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Roulement de roue BMW i4',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 20,
                  fontFamily: 'Montserrat-Meduim',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01),
            const Center(child: ImagesSlider()),
            SizedBox(height: screenHeight * 0.01),
            const Text(
              '25.954 DT',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Montserrat-bold',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01),
            const Text(''),
            SizedBox(height: screenHeight * 0.01),
            const Text('description'),
            SizedBox(height: screenHeight * 0.015),
            const Text(''),
            SizedBox(height: screenHeight * 0.015),
            const Text(
              'En Stock',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 15,
                  fontFamily: 'Montserrat-bold',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01),
            const Text(
              'Termes & Conditions',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 15,
                  fontFamily: 'Montserrat-bold',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/delevry2.png',
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.08,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '2 days',
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/delevry2.png',
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.08,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '2 days',
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/delevry2.png',
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.08,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '2 days',
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: MyButtonIcon(
                    text: 'Add To Cart',
                    onTap: () {
                      Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(
                              builder: (context) => const PanierPiece()));
                    },
                    icon: Icons.shopping_bag_outlined,
                  ),
                ),
                SizedBox(width: screenWidth * 0.02),
                Container(
                  height: screenHeight * 0.065,
                  width: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  child: HeartButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
