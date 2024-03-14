import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/recapulatif.dart';
import 'package:piecexpresspfe/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/button_widget/buttonwithIcon.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/pages/recherche.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int quantityCount = 0;

  List<Map<String, dynamic>> items = [
    {
      'name': 'Roulement de roue',
      'price': '25.954',
      'image': 'assets/roulement1.png',
    },
    {
      'name': 'Disque Frein',
      'price': '99.290 DT',
      'image': 'assets/roulement2.png',
    },
    {
      'name': 'Pneus 165/80R14 BARUM TL',
      'price': '190.000 DT',
      'image': 'assets/roulement3.png',
    },
  ];

  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Favoris',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Image.asset('assets/icons/flecheSortie.png'),
          onPressed: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => RecherchePage()));
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping.png'),
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => PanierPiece()));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecapulatifPage(
                          selectedItem: items[index],
                          items: const [],
                          totalPrice: '',
                        ),
                      ),
                    );
                  },
                  child: buildItem(items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(Map<String, dynamic> item) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 216, 211, 211),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['name'],
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              const SizedBox(width: 20),
                              HeartButton(),
                            ],
                          ),
                          Text(
                            item['price'],
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: MyButtonIcon(
                              text: 'Add to Cart',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PanierPiece()));
                              },
                              icon: Icons.shopping_bag,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
