import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/CustomCarMarks.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/screens/menu2/widget/navigation_drawer_widget.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';

class HomePage2S extends StatefulWidget {
  const HomePage2S({super.key});

  @override
  State<HomePage2S> createState() => _HomePage2SState();
}

class CarData {
  final String imageAsset;
  final String title;

  CarData(this.imageAsset, this.title);
}

class _HomePage2SState extends State<HomePage2S> {
  final List<CarData> cars = [
    CarData('assets/images/BMW (2).png', 'roulement'),
    CarData('assets/images/BMW (2).png', 'roulement'),
    CarData('assets/images/BMW (2).png', 'roulement'),
    CarData('assets/images/BMW (2).png', 'roulement'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    double cardWidth = screenWidth * 0.9;
    double imageWidth = cardWidth * 0.5;
    double margin = screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Image.asset(
            "assets/images/logo.png",
            width: screenWidth * 0.3,
            height: screenHeight * 0.2,
          ),
        ),
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
            },
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset(
                'assets/images/menuicon.png',
                height: screenHeight * 0.05,
                width: screenWidth * 0.05,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Yosra !!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.08,
                    fontFamily: "Montserrat",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: screenWidth * 0.09,
                  backgroundImage: AssetImage('assets/images/yos.png'),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Most Popular Cars',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomCarMarks(),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  CarData car = cars[index];
                  return Container(
                    margin: EdgeInsets.all(10),
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
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              car.imageAsset,
                              fit: BoxFit.cover,
                              width: imageWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            car.title,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
