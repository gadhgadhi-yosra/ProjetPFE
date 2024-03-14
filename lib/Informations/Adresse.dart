import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/informationClient.dart';
import 'package:piecexpresspfe/Informations/recapulatif.dart';
import 'package:piecexpresspfe/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class AdressePage extends StatefulWidget {
  const AdressePage({super.key});

  @override
  State<AdressePage> createState() => _AdressePageState();
}

class _AdressePageState extends State<AdressePage> {
  final villeController = TextEditingController();
  final infosController = TextEditingController();
  final adressevController = TextEditingController();
  final codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Adresse',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Image.asset('assets/flecheSortie.png'),
            onPressed: () {
              Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) => const InformationsPersonnelles()));
            },
          ),
          actions: [
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
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
              ),
              const SizedBox(
                height: 30,
                width: 200,
              ),
              const Text(
                "Adresse",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: adressevController,
                hintText: "17 Avenue feuille d'érable Lac2",
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Ville",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: villeController,
                hintText: 'Tunis',
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Code postale",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: codeController,
                hintText: '2062',
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Infos complémentaires",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: infosController,
                hintText: 'A coté de ben Yaghlene',
                obsureText: false,
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: MyButton(
                        text: 'Confirmer',
                        onTap: () {
                          Navigator.push(
                              context as BuildContext,
                              MaterialPageRoute(
                                  builder: (context) => const RecapulatifPage(
                                        items: [],
                                        totalPrice: '',
                                        selectedItem: {},
                                      )));
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonAnnuler(
                    onTap: () {
                      Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationsPersonnelles()));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
