import 'package:flutter/material.dart';
import 'package:piecexpresspfe/acceuil/homePage.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/navigationBar.dart';
import 'package:piecexpresspfe/screens/signin.dart/signupPage.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var usernameController;
    var passwordController;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Se connecter',
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
                  height: 70,
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
                  height: 20,
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
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: MyButton(
                      text: "Se connecter",
                      onTap: () {
                        Navigator.push(
                            context as BuildContext,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(
                              builder: (context) => NavigationBarScreen()));
                    },
                    child: const Text(
                      " Mot de passe oublié?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
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
        const Text("Vous n'avez pas un compte?",
            style: TextStyle(color: Colors.grey, fontSize: 14)),
        GestureDetector(
          onTap: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " S'inscrire",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
