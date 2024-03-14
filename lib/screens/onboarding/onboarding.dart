import 'package:flutter/material.dart';
import 'package:piecexpresspfe/screens/signin.dart/signinPage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentindex = 0;
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
      'title':
          "Trouver rapidement les pièces dont \n vous avez besoin avec Pieces Express",
      'image': 'assets/images/onBoarding1.png',
    },
    {
      'title': 'Explorez notre catalogue des pièces de recharge de qualité',
      'image': 'assets/images/onBoarding2.png',
    },
    {
      'title': 'Commandez facilement et recevez vos pièces rapidement ',
      'image': 'assets/images/onBoarding3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: dataList.length,
        onPageChanged: (int index) {
          setState(() {
            currentindex = index;
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
              const SizedBox(height: 10),
              Positioned(
                top: 25,
                height: 600,
                width: 440,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Let's get started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat-Regular"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: 0.7,
                        child: Text(
                          dataList[index]['title']!,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Positioned(
                top: 235,
                height: 950,
                width: 440,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      dataList.length,
                      (index) => buildDolt(index, context),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.all(40),
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentindex == dataList.length - 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignInScreen()));
                      }
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceIn);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Commencer',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Positioned(
                bottom: 15,
                left: 350,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context as BuildContext,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: const Text(
                        " Skip",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDolt(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentindex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
