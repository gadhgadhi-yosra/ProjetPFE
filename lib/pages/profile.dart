import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/pages/favorie.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirController = TextEditingController();
  final emailController = TextEditingController();
  final numeroController = TextEditingController();
  final AdresseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Image.asset('assets/flecheSortie.png'),
          onPressed: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => const FavoritePage()));
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping.png'),
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  print('Edit Image tapped');
                },
                child: Center(
                  child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/yos.jpg'),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Nom d'utilisateur",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: nameController,
                hintText: "Yosra Gadhgadhi",
                obsureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Adresse Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: emailController,
                hintText: "gadhgadhiyosra2@gmail.com",
                obsureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Numéro de téléphone",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: numeroController,
                hintText: "+21693541458",
                obsureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Adresse",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: AdresseController,
                hintText: "Ghardimaou kalaa",
                obsureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mot de passe ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: passwordController,
                hintText: "Entrer votre mot de passe ",
                obsureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Conformer votre mot de passe",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledForm(
                controller: confirController,
                hintText: 'Conformer votre mot de passe',
                obsureText: true,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: MyButton(text: "Confirmer", onTap: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
