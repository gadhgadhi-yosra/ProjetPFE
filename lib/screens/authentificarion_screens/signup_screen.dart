import 'package:flutter/material.dart';
import 'package:piecexpresspfe/navigationBar.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/customTextFormFeild.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/resuable_widgets/signinOption.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;
  bool _emailError = false;
  bool _passwordError = false;
  bool _confirmPasswordError = false;
  bool _nameError = false;
  bool _prenomError = false;

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$',
  );
  final RegExp passwordRegex = RegExp(
    r'^.{8,}$',
  );
  final RegExp nameRegex = RegExp(
    r'^[a-zA-Z ]{2,}$',
  );
  final RegExp prenomRegex = RegExp(
    r'^[a-zA-Z ]{2,}$',
  );

  void validateFields() {
    bool nameIsEmpty = nameController.text.isEmpty;
    bool prenomIsEmpty = prenomController.text.isEmpty;
    bool emailIsEmpty = emailController.text.isEmpty;
    bool passwordIsEmpty = passwordController.text.isEmpty;
    bool confirmPasswordIsEmpty = confirmPasswordController.text.isEmpty;

    setState(() {
      _emailError = emailIsEmpty || !emailRegex.hasMatch(emailController.text);
      _passwordError =
          passwordIsEmpty || !passwordRegex.hasMatch(passwordController.text);
      _confirmPasswordError = confirmPasswordIsEmpty ||
          confirmPasswordController.text != passwordController.text;
      _nameError = nameIsEmpty || !nameRegex.hasMatch(nameController.text);
      _prenomError =
          prenomIsEmpty || !prenomRegex.hasMatch(prenomController.text);
    });

    if (!_emailError &&
        !_passwordError &&
        !_confirmPasswordError &&
        !_nameError &&
        !_prenomError) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NavigationBarScreen()));
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
        title: const Text("S'inscrire",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Montserrat-Meduim',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center),
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
              SizedBox(height: screenHeight * 0.05),
              TextFormFieldCustom(
                hint: 'Entrer votre nom',
                label: 'Nom',
                controller: nameController,
                regex: nameRegex,
                errorMessage:
                    nameController.text.isEmpty ? "Nom vide" : "Nom invalide",
                isError: _nameError,
                isHidden: false,
                updateErrorState: () =>
                    setState(() => _nameError = !_nameError),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Entrer votre prénom',
                label: 'Prénom',
                controller: prenomController,
                regex: prenomRegex,
                errorMessage: prenomController.text.isEmpty
                    ? "Prénom vide"
                    : "Prénom invalide",
                isError: _prenomError,
                isHidden: false,
                updateErrorState: () =>
                    setState(() => _prenomError = !_prenomError),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Entrer votre email',
                label: 'Email',
                controller: emailController,
                regex: emailRegex,
                errorMessage: emailController.text.isEmpty
                    ? "Email vide"
                    : "Email invalide",
                isError: _emailError,
                isHidden: false,
                updateErrorState: () =>
                    setState(() => _emailError = !_emailError),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Entrer votre mot de passe',
                label: 'Mot de passe',
                controller: passwordController,
                regex: passwordRegex,
                errorMessage: passwordController.text.isEmpty
                    ? "Mot de passe vide"
                    : "Mot de passe invalide",
                isError: _passwordError,
                isHidden: _isObscurePassword,
                updateErrorState: () =>
                    setState(() => _passwordError = !_passwordError),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFormFieldCustom(
                hint: 'Confirmer votre mot de passe',
                label: 'Confirmation',
                controller: confirmPasswordController,
                regex: passwordRegex,
                errorMessage: confirmPasswordController.text.isEmpty
                    ? "Confirmation vide"
                    : "Les mots de passe ne correspondent pas",
                isError: _confirmPasswordError,
                isHidden: _isObscureConfirmPassword,
                updateErrorState: () => setState(
                    () => _confirmPasswordError = !_confirmPasswordError),
              ),
              SizedBox(height: screenHeight * 0.03),
              MyButton(
                text: "S'inscrire",
                onTap: validateFields,
              ),
              SizedBox(height: 0.07 * MediaQuery.of(context).size.height),
              SignInOption(
                textBefore: "Vous avez un compte ?",
                actionText: "Se connecter",
                onTap: () {
                  Navigator.push(context as BuildContext,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
