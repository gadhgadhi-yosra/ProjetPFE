import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/model/piece.dart';
import 'package:piecexpresspfe/pages/PieceDetailsPage.dart';
import 'package:piecexpresspfe/pages/panier.dart';

class ListePiece extends StatefulWidget {
  @override
  State<ListePiece> createState() => _ListePieceState();
}

class _ListePieceState extends State<ListePiece> {
  final List<piece> pieces = [
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/Menneke.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/Menneke.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/Menneke.png'),
    piece(
        name: 'Roulement',
        price: '25.954 DT',
        imagePath: 'assets/images/Menneke.png'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.5;
    double containerHeight = containerWidth * 0.8;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: containerHeight,
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
              child: Container(
                width: containerWidth,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pieces[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        HeartButton()
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        pieces[index].imagePath,
                        fit: BoxFit.cover,
                        width: containerWidth,
                        height: containerHeight * 0.6,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pieces[index].price,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Image.asset('assets/icons/shopping.png'),
                          onPressed: () {
                            Navigator.push(
                                context as BuildContext,
                                MaterialPageRoute(
                                    builder: (context) => const PanierPiece()));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
