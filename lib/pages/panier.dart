import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/informationClient.dart';
import 'package:piecexpresspfe/Informations/recapulatif.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';

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
      'image': 'assets/roulement1.png',
    },
    {
      'name': 'Disque Frein',
      'price': '99.290 DT',
      'brand': 'BMW X5',
      'image': 'assets/roulement2.png',
    },
    {
      'name': 'Pneus 165/80R14 BARUM TL',
      'price': '190.000 DT',
      'brand': 'BMW l3',
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
          'Panier',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Image.asset('assets/flecheSortie.png'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping.png'),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '980.000 DT',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Positioned(
                  top: 50,
                  child: Container(
                    color: Colors.grey,
                    height: 1.0,
                  ),
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
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecapulatifPage(
                          selectedItem: items[index],
                          totalPrice: '980.000 DT',
                          items: const [],
                        ),
                      ),
                    );
                  },
                  child: buildItem(items[index]),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: MyButton(
                text: 'Commander',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InformationsPersonnelles(),
                      ));
                }),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(width: 25),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete_outline_outlined),
                            )
                          ],
                        ),
                        Text(
                          item['price'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Marque : ',
                              style: TextStyle(
                                  color: Color(0xFFB8B3B3), fontSize: 12),
                            ),
                            Text(
                              item['brand'],
                              style: const TextStyle(
                                  color: Color(0xFFB8B3B3), fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 12,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                    ),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                    onPressed: decrementQuantity,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Center(
                                    child: Text(
                                      quantityCount.toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 12,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(4),
                                    ),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    onPressed: incrementQuantity,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 25),
                            const Icon(
                              Icons.favorite_outline,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ],
                        )
                      ],
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
