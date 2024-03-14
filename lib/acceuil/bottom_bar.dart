import 'package:flutter/material.dart';

import 'bottom_bar_Item.dart';

class TabBarAnimated extends StatelessWidget {
  const TabBarAnimated({
    Key? key,
    required this.indexCurrent,
    required this.onChanged,
  }) : super(key: key);

  final int indexCurrent;
  final void Function(int indexNew) onChanged;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      selectedLabelStyle: const TextStyle(
          fontFamily: "Montserrat", fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(
          fontFamily: "Montserrat", fontWeight: FontWeight.w600),
      backgroundColor: const Color(0xFFF7F7F7),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.red,
      onTap: onChanged,
      currentIndex: indexCurrent,
      items: TabPage.listGet(context)
          .map(
            (page) => BottomNavigationBarItem(
              activeIcon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.black, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Image.asset(
                  page.navIcon,
                  // ignore: deprecated_member_use
                  color: Colors.black,
                ),
              ),
              icon: Image.asset(
                page.navIcon,
                // ignore: deprecated_member_use
                color: Colors.black,
              ),
              label: page.navLabel,
            ),
          )
          .toList(growable: false),
    );
  }
}
