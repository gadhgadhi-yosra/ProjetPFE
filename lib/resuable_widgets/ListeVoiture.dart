import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/pages/details_page.dart';

class VoitureListe extends StatefulWidget {
  const VoitureListe({super.key});

  @override
  State<VoitureListe> createState() => _VoitureListeState();
}

class _VoitureListeState extends State<VoitureListe> {
  final List<Map<String, dynamic>> cars = [
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(
                    carData: {},
                  ),
                ),
              );
            },
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(255, 216, 209, 209)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      HeartButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        cars[index]["image"],
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      cars[index]["name"],
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
