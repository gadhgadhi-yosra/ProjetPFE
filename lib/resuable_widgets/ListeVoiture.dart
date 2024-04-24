import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/details_page.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class VoitureListe extends StatefulWidget {
  const VoitureListe({super.key});

  @override
  State<VoitureListe> createState() => _VoitureListeState();
}

class _VoitureListeState extends State<VoitureListe> {
  final List<Map<String, dynamic>> cars = [
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
    {"name": "BMW", "image": "assets/images/BMW (2).png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (BuildContext context, int index) {
          double screenWidth = MediaQuery.of(context).size.width;
          double cardWidth = screenWidth * 0.9;
          double imageWidth = cardWidth * 0.5;
          double margin = screenWidth * 0.05;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.tertiaryColor,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: margin),
                      HeartButton(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        cars[index]["image"],
                        fit: BoxFit.cover,
                        width: imageWidth,
                        height: 200,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
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
