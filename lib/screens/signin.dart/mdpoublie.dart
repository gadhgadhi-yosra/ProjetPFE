import 'package:flutter/material.dart';
import 'package:piecexpresspfe/button_widget/mybutton.dart';
import 'package:piecexpresspfe/screens/signin.dart/otpPage.dart';
import 'package:piecexpresspfe/screens/signin.dart/signupPage.dart';
import 'package:piecexpresspfe/screens/signin.dart/textFiledForm.dart';

class MotPasseOublie extends StatefulWidget {
  MotPasseOublie({super.key});
  final usernameController = TextEditingController();

  @override
  State<MotPasseOublie> createState() => _MotPasseOublieState();
}

class _MotPasseOublieState extends State<MotPasseOublie> {
  @override
  Widget build(BuildContext context) {
    var usernameController;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Mot de passe oublié',
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
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 80,
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
                  icon: Icons.email_outlined,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: MyButton(
                      text: 'Envoyer un code',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      }),
                ),
                const SizedBox(
                  height: 400,
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
                MaterialPageRoute(builder: (context) => SignUpScreen()));
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
