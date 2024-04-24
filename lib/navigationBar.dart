import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:piecexpresspfe/pages/chatboot.dart';
import 'package:piecexpresspfe/pages/favorie.dart';
import 'package:piecexpresspfe/pages/home.dart';
import 'package:piecexpresspfe/pages/profile.dart';
import 'package:piecexpresspfe/pages/recherche.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage2S(),
    const RecherchePage(),
    const ChatBot(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  late final PageStorageBucket pageStorageBucket;
  late Widget currentScreen;

  @override
  void initState() {
    super.initState();
    pageStorageBucket = PageStorageBucket();
    currentScreen = screens[currentTab];
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.search,
        size: 30,
      ),
      Image.asset(
        'assets/icons/chatbot.png',
        width: 30,
        height: 30,
      ),
      Icon(
        Icons.favorite,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];

    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        body: PageStorage(
          child: currentScreen,
          bucket: pageStorageBucket,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.black),
          ),
          child: CurvedNavigationBar(
            color: AppColors.tertiaryColor,
            buttonBackgroundColor: AppColors.tertiaryColor,
            backgroundColor: Colors.transparent,
            height: 60,
            animationDuration: Duration(milliseconds: 300),
            items: items,
            onTap: (index) {
              setState(() {
                currentTab = index;
                currentScreen = screens[currentTab];
              });
            },
          ),
        ),
      ),
    );
  }
}
