import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/details_page.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/ImageSlider.dart';

class PieceDetailsPage extends StatelessWidget {
  const PieceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Roulement de roue BMW i4',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Image.asset('assets/flecheSortie.png'),
          onPressed: () {
            Navigator.push(
                context as BuildContext,
                MaterialPageRoute(
                    builder: (context) => const DetailsPage(
                          carData: {},
                        )));
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping.png'),
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
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Center(child: ImagesSlider()),
            const SizedBox(height: 10),
            const Text(
              '25.954 DT',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const SizedBox(height: 10),
            const Text(''),
            const SizedBox(height: 10),
            const Text('description'),
            const SizedBox(height: 15),
            const Text(''),
            const SizedBox(height: 15),
            const Text(
              'En Stock',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Termes & Conditions',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/delevry2.png',
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
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
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
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
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    const Text(
                      'Fast Delivery',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    const Text(
                      '2 days',
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(
                      Icons
                          .favorite_outline, // hedhy lazm nrigel leha button favorite
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
