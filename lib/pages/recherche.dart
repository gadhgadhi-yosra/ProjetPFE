import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/ListeVoiture.dart';
import 'package:piecexpresspfe/resuable_widgets/rechercheCustom.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({Key? key}) : super(key: key);

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100),
          child: Image.asset("assets/images/logo.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
        leading: SizedBox(
          height: 10,
          width: 10,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/menuicon.png', height: 30),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
            ),
            RechercheCustom(
              hintText: 'Recherche une voiture',
            ),
            SizedBox(
              height: 20,
            ),
            VoitureListe(),
          ],
        ),
      ),
    );
  }
}
