import 'package:flutter/material.dart';
import 'package:piecexpresspfe/acceuil/bottom_bar.dart';
import 'package:piecexpresspfe/resuable_widgets/CustomCarMarks.dart';
import 'package:piecexpresspfe/resuable_widgets/ListeVoiture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexCurrent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: const EdgeInsets.all(100),
            child: Image.asset("assets/images/logo.png")),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
        leading: SizedBox(
            height: 10,
            width: 10,
            child: Image.asset("assets/images/menuicon.png")),
      ),
      bottomNavigationBar: TabBarAnimated(
        indexCurrent: indexCurrent,
        onChanged: (indexNew) {
          setState(() {
            indexCurrent = indexNew;
          });
        },
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Hello Yosra !!',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Montserrat",
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/yos.jpg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Most Popular Cars',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomCarMarks(),
              const VoitureListe(), // mochkel houni bach walit page bedha
            ],
          ),
        ),
      ),
    );
  }
}
