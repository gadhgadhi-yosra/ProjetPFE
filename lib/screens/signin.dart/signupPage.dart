import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/screens/signin.dart/signinPage.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirController = TextEditingController();
  final PrenomController = TextEditingController();

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var usernameController;
    var passwordController;
    var nameController;
    var confirController;
    var PrenomController;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "S'inscrire",
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Nom ",
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
                  hintText: "Entrer votre nom ",
                  obsureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Prenom ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFiledForm(
                  controller: PrenomController,
                  hintText: "Entrer votre prénom ",
                  obsureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFiledForm(
                  controller: usernameController,
                  hintText: 'Entrer votre email',
                  obsureText: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Mot de passe",
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
                  hintText: 'Entrer votre mot de passe',
                  obsureText: true,
                ),
                const SizedBox(
                  height: 30,
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: MyButton(text: "S'inscrire", onTap: () {})),
                const SizedBox(
                  height: 50,
                ),
                signInOption(),
              ],
            ),
          ),
        ));
  }

  Row signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Vous avez un compte?",
            style: TextStyle(color: Colors.grey, fontSize: 14)),
        GestureDetector(
          onTap: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => SignInScreen()));
          },
          child: const Text(
            " Se connecter",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
