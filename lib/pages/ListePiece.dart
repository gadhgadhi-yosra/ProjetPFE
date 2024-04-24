import 'package:flutter/material.dart';
import 'package:piecexpresspfe/model/piece.dart';
import 'package:piecexpresspfe/pages/PieceDetailsPage.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class ListePiece extends StatefulWidget {
  @override
  State<ListePiece> createState() => _ListePieceState();
}

class _ListePieceState extends State<ListePiece> {
  final List<piece> pieces = [
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/roulement1.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/roulement2.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/roulement3.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/Menneke.png'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    double baseFontSize = screenWidth * 0.03;
    double containerWidth = screenWidth * 0.7;
    double containerHeight = containerWidth * 0.7;
    double verticalSpacing = screenHeight * 0.01;

    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pieces.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PieceDetailsPage()),
                );
              },
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, -5)),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 5)),
                    ],
                  ),
                  width: containerWidth,
                  margin: EdgeInsets.only(left: 5, right: 30),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pieces[index].name,
                              style: TextStyle(
                                fontSize: baseFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            HeartButton(),
                          ],
                        ),
                        SizedBox(height: verticalSpacing),
                        Image.asset(
                          pieces[index].imagePath,
                          width: containerWidth,
                          height: containerHeight * 0.35,
                        ),
                        SizedBox(height: verticalSpacing),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pieces[index].price,
                              style: TextStyle(
                                fontSize: baseFontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            IconButton(
                              icon: Image.asset('assets/icons/panier.png',
                                  width: screenWidth * 0.05,
                                  height: screenWidth * 0.05),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PanierPiece()),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
