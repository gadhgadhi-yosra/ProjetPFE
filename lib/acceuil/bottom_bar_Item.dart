import 'package:flutter/material.dart';
import 'package:piecexpresspfe/imagePath.dart';
import 'package:piecexpresspfe/pages/favorie.dart';
import 'package:piecexpresspfe/pages/home.dart';
import 'package:piecexpresspfe/pages/profile.dart';
import 'package:piecexpresspfe/pages/recherche.dart';

class TabPage {
  final Widget page;
  final String navLabel;
  final String navIcon;

  const TabPage(
      {required this.navLabel, required this.navIcon, required this.page});

  static List<TabPage> listGet(BuildContext context) {
    return [
      const TabPage(
        page: const HomePage2S(),
        navLabel: "aaa",
        navIcon: ImagesPath.tabbarHomeUnselected,
      ),
      const TabPage(
        page: FavoritePage(),
        navLabel: "bbb",
        navIcon: ImagesPath.tabbarPlusUnselected,
      ),
      const TabPage(
        page: RecherchePage(),
        navLabel: "ccc",
        navIcon: ImagesPath.tabbarManUnselected,
      ),
      const TabPage(
        page: const ProfilePage(),
        navLabel: "ddd",
        navIcon: ImagesPath.tabbarRobotUnselected,
      ),
    ];
  }
}
