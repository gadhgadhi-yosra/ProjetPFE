import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/Adresse.dart';
import 'package:piecexpresspfe/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class InformationsPersonnelles extends StatefulWidget {
  const InformationsPersonnelles({super.key});

  @override
  State<InformationsPersonnelles> createState() =>
      _InformationsPersonnellesState();
}

class _InformationsPersonnellesState extends State<InformationsPersonnelles> {
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final adresseController = TextEditingController();
  final numeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Informations Personnelles',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Image.asset('assets/flecheSortie.png'),
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
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
              const SizedBox(
                width: 200,
                height: 30,
              ),
              const Text(
                "Nom",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: nomController,
                hintText: "Gadhgadhi",
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Prénom",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: prenomController,
                hintText: 'Yosra',
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Adresse Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: adresseController,
                hintText: 'gadhgadhiyosra2@gmail.com',
                obsureText: false,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Numero de téléphone",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: numeroController,
                hintText: '93541458',
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
                        text: 'Suivant',
                        onTap: () {
                          Navigator.push(
                              context as BuildContext,
                              MaterialPageRoute(
                                  builder: (context) => AdressePage()));
                        }),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonAnnuler(
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
