import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/pages/ListePiece.dart';
import 'package:piecexpresspfe/pages/recherche.dart';
import 'package:piecexpresspfe/resuable_widgets/ColumnTable.dart';
import 'package:piecexpresspfe/resuable_widgets/rechercheCustom.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.carData}) : super(key: key);

  final Map<String, String> carData;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool frontButtonClicked = false;
  bool sideButtonClicked = false;
  bool rearButtonClicked = false;
  bool degreeButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMW : M Sport',
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Image.asset('assets/flecheSortie.png'),
          onPressed: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => RecherchePage()));
          },
        ),
        actions: [
          HeartButton(),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Visibility(
                visible: frontButtonClicked,
                child: Container(
                  child: Image.asset('assets/images/BMW (2).png'),
                ),
              ),
              Visibility(
                visible: sideButtonClicked,
                child: Container(
                  child: Image.asset('assets/images/bmwSide.png'),
                ),
              ),
              Visibility(
                visible: rearButtonClicked,
                child: Container(
                  child: Image.asset('assets/images/bmwRear.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                _buildButton(
                  'Front',
                  frontButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = true;
                      sideButtonClicked = false;
                      rearButtonClicked = false;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                const SizedBox(width: 10),
                _buildButton(
                  'Side',
                  sideButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = true;
                      rearButtonClicked = false;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                const SizedBox(width: 10),
                _buildButton(
                  'Rear',
                  rearButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = false;
                      rearButtonClicked = true;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                const SizedBox(width: 10),
                _buildButton(
                  '360°',
                  degreeButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = false;
                      rearButtonClicked = false;
                      degreeButtonClicked = true;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const Expanded(
                  child: RechercheCustom(
                    hintText: 'Recherche une piéce de rechange',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 800,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Filtrer les pièces de rechange ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 50),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.delete),
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const ColumnTable(),
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: MyButton(
                                          text: 'Confirmer', onTap: () {}))
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.filter_3_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ListePiece(),
        ],
      ),
    );
  }

  Widget _buildButton(
    String text,
    bool isClicked,
    Color buttonColor,
    VoidCallback onPressed,
  ) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: isClicked ? buttonColor : Colors.white,
        ),
        height: 60,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: isClicked ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
