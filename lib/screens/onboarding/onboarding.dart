import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/signin_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Map<String, String>> dataList = [
    {
      "title":
          "Trouver rapidement les pièces dont\nvous avez besoin avec Pieces Express",
      "image": "assets/images/onBoarding1.png"
    },
    {
      "title": "Explorez notre catalogue des pièces\nde recharge de qualité",
      "image": "assets/images/onBoarding2.png"
    },
    {
      "title": "Commandez facilement et recevez vos\npièces rapidement",
      "image": "assets/images/onBoarding3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: dataList.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  dataList[index]['image']!,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: screenHeight * 0.05,
                left: screenWidth * 0.05,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Let's get started",
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        dataList[index]['title']!,
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.25,
                height: screenHeight * 0.9,
                width: screenWidth,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        dataList.length, (index) => buildDot(index, context)),
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.1,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.all(screenWidth * 0.1),
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentIndex == dataList.length - 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignInScreen()));
                      }
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceIn,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Commencer',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.05,
                right: screenWidth * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondaryColor,
      ),
    );
  }
}
