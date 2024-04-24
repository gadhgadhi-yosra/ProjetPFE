import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/screens/menu2/page/a_proposPage.dart';
import 'package:piecexpresspfe/screens/menu2/page/favourite_page.dart';
import 'package:piecexpresspfe/screens/menu2/page/log_out_page.dart';

import 'package:piecexpresspfe/screens/menu2/page/user_page.dart';

import '../page/condition_generales_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Yosra gadhgadhi';
    final email = 'gadhyosra@.com';

    final Image = 'assets/images/yos.png';

    return Drawer(
      child: Material(
        child: Container(
          width: 288,
          height: double.infinity,
          color: AppColors.secondaryColor,
          child: ListView(
            children: <Widget>[
              buildHeader(
                Image: Image,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserPage(
                    name: name,
                    email: email,
                    image: Image,
                  ),
                )),
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    buildMenuItem(
                      text: 'A propos',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    const Divider(
                      color: AppColors.primaryColor,
                    ),
                    buildMenuItem(
                      text: 'Paramétres',
                      icon: Icons.favorite_border,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Conditions générales',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 350),
                    const Divider(
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Log out',
                      icon: Icons.account_tree_outlined,
                      onClicked: () => selectedItem(context, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String Image,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(Image)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AproposPage1(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ParametresPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CondtionsGenerales(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LogOutPage(),
        ));
        break;
    }
  }
}
