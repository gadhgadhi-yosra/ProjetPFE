import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/Adresse.dart';
import 'package:piecexpresspfe/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/pages/panier.dart';

class RecapulatifPage extends StatefulWidget {
  final Map<String, dynamic> selectedItem;
  final String totalPrice;

  const RecapulatifPage({
    Key? key,
    required this.selectedItem,
    required this.totalPrice,
    required List items,
  }) : super(key: key);

  @override
  State<RecapulatifPage> createState() => _RecapulatifPageState();
}

class _RecapulatifPageState extends State<RecapulatifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Récapitulatif',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Image.asset('assets/flecheSortie.png'),
          onPressed: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => const AdressePage()));
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.black,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3,
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            const SizedBox(
              width: 200,
              height: 30,
            ),
            Row(
              children: [
                Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 4,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 228, 228),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      widget.selectedItem['image'],
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.selectedItem['name'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.selectedItem['price'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Text(
                            'marque : ${widget.selectedItem['brand']}',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Méthode de paiement',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Opacity(
              opacity: 0.2,
              child: Text(
                'Paiement cash à la livraison',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Détails de paiement',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Total des articles :',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '98.100 TDt',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Frais de transport :',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '7 TDt',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Total :',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '105.100 TDt',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Adresse de livraison',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Opacity(
              opacity: 0.2,
              child: Text(
                "17 avenue feuille d'érable Lac2",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: MyButton(text: 'Suivant', onTap: () {}),
                ),
                const SizedBox(
                  width: 10,
                ),
                ButtonAnnuler(onTap: () {
                  Navigator.push(
                      context as BuildContext,
                      MaterialPageRoute(
                          builder: (context) => const AdressePage()));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
