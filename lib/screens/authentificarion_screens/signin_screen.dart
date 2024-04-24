import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:piecexpresspfe/navigationBar.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/customTextFormFeild.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/resuable_widgets/signinOption.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/forget_password.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _emailError = false;
  bool _passwordError = false;

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$',
  );
  final RegExp passwordRegex = RegExp(
    r'^.{8,}$',
  );

  void validateFields() {
    setState(() {
      _emailError = _emailController.text.isEmpty ||
          !emailRegex.hasMatch(_emailController.text);
      _passwordError = _passwordController.text.isEmpty ||
          !passwordRegex.hasMatch(_passwordController.text);
    });

    if ((!_emailError) && (!_passwordError)) {
      Navigator.push(context as BuildContext,
          MaterialPageRoute(builder: (context) => NavigationBarScreen()));
      debugPrint("le texte dans email est ${_emailController.text}");
      debugPrint("le texte dans mot de passe est ${_passwordController.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Se connecter',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Montserrat-Meduim',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          scrolledUnderElevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: screenWidth * 0.5,
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                TextFormFieldCustom(
                  hint: 'Entrer votre email',
                  label: 'Email',
                  controller: _emailController,
                  regex: emailRegex,
                  errorMessage: _emailController.text.isEmpty
                      ? "Email vide"
                      : "Email invalide",
                  isError: _emailError,
                  isHidden: false,
                  updateErrorState: () => setState(
                    () => _emailError = !_emailError,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                TextFormFieldCustom(
                  hint: 'Entrer votre mot de passe',
                  label: 'Mot de passe',
                  controller: _passwordController,
                  regex: emailRegex,
                  errorMessage: _passwordController.text.isEmpty
                      ? "Mot de passe vide"
                      : "Mot de passe invalide",
                  isError: _passwordError,
                  isHidden: false,
                  updateErrorState: () => setState(
                    () => _passwordError = !_passwordError,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Center(
                  child: Container(
                    width: screenWidth,
                    child: MyButton(
                        text: "Se connecter",
                        onTap: () {
                          validateFields();
                        }),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(
                              builder: (context) => MotPasseOublie()));
                    },
                    child: const Text(
                      " Mot de passe oublié?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.17),
                SignInOption(
                  textBefore: "Vous n'avez pas un compte ?",
                  actionText: "S'inscrire",
                  onTap: () {
                    Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
