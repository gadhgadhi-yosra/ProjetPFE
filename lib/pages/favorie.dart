import 'package:flutter/material.dart';

import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonwithIcon.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final List<Map<String, dynamic>> favorites = [
    {
      'title': 'ROULEMENT',
      'price': '23.45 DT',
      'imagePath': 'assets/images/roulement1.png',
    },
    {
      'title': 'ROULEMENT',
      'price': '23.45 DT',
      'imagePath': 'assets/images/roulement1.png',
    },
    {
      'title': 'ROULEMENT',
      'price': '23.45 DT',
      'imagePath': 'assets/images/roulement1.png',
    },
    {
      'title': 'ROULEMENT',
      'price': '23.45 DT',
      'imagePath': 'assets/images/roulement1.png',
    },
    {
      'title': 'ROULEMENT',
      'price': '23.45 DT',
      'imagePath': 'assets/images/roulement1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Favoris',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: screenWidth * 0.04,
              fontFamily: 'Montserrat-Bold',
              fontWeight: FontWeight.bold),
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
              height: screenWidth * 0.05,
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
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final item = favorites[index];
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
            child: Container(
              height: screenHeight * 0.19,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth * 0.25,
                    margin: EdgeInsets.only(left: screenWidth * 0.02),
                    decoration: BoxDecoration(
                      color: AppColors.tertiaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      item['imagePath'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.045),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            HeartButton(),
                          ],
                        ),
                        Text(
                          item['price'],
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight * 0.030),
                        MyButtonIcon(
                          text: 'Add To Cart',
                          onTap: () {},
                          icon: Icons.shopping_bag,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
