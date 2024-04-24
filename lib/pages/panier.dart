import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/informationClient.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class PanierPiece extends StatefulWidget {
  const PanierPiece({Key? key});

  @override
  State<PanierPiece> createState() => _PanierPieceState();
}

class _PanierPieceState extends State<PanierPiece> {
  int quantityCount = 0;

  List<Map<String, dynamic>> items = [
    {
      'name': 'Roulement de roue',
      'price': '25.954',
      'brand': 'BMW l3',
      'image': 'assets/images/roulement1.png',
      'quantity': 0,
    },
    {
      'name': 'Disque Frein',
      'price': '99.290 DT',
      'brand': 'BMW X5',
      'image': 'assets/images/roulement2.png',
      'quantity': 0,
    },
    {
      'name': 'Pneus 165/80R14 \n BARUM TL',
      'price': '190.000 DT',
      'brand': 'BMW l3',
      'image': 'assets/images/roulement3.png',
      'quantity': 0,
    },
  ];

  void incrementQuantity(int index) {
    setState(() {
      items[index]['quantity']++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (items[index]['quantity'] > 0) {
        items[index]['quantity']--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Panier',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Montserrat-Bold',
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
        scrolledUnderElevation: 0,
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
                MaterialPageRoute(
                  builder: (context) => const PanierPiece(),
                ),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.04),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '980.000 DT',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-bold'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  color: Colors.grey,
                  height: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return buildItem(items[index], index);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(55.0),
            child: Container(
              width: screenWidth * 0.8,
              child: MyButton(
                text: 'Commander',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InformationsPersonnelles(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(Map<String, dynamic> item, int index) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
              margin: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                item['image'],
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item['name'],
                        style: const TextStyle(
                            color: AppColors.primaryColor, fontSize: 15),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/delete.png',
                          height: screenHeight * 0.02,
                          width: screenWidth * 0.04,
                        ),
                      )
                    ],
                  ),
                  Text(
                    item['price'],
                    style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        'Marque : ',
                        style:
                            TextStyle(color: Color(0xFFB8B3B3), fontSize: 12),
                      ),
                      Text(
                        item['brand'],
                        style: const TextStyle(
                            color: Color(0xFFB8B3B3), fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: screenHeight * 0.04,
                            width: screenWidth * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: AppColors.tertiaryColor,
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: () => decrementQuantity(index),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.04,
                            width: screenWidth * 0.2,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.tertiaryColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                items[index]['quantity'].toString(),
                                style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.04,
                            width: screenWidth * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: AppColors.tertiaryColor,
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: AppColors.primaryColor,
                              ),
                              onPressed: () => incrementQuantity(index),
                            ),
                          ),
                        ],
                      ),
                      HeartButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
