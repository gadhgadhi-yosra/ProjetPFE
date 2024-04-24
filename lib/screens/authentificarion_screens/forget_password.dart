import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

import 'package:piecexpresspfe/resuable_widgets/customTextFormFeild.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';
import 'package:piecexpresspfe/resuable_widgets/signinOption.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/otp.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/signin_screen.dart';

class MotPasseOublie extends StatefulWidget {
  MotPasseOublie({Key? key}) : super(key: key);

  @override
  State<MotPasseOublie> createState() => _MotPasseOublieState();
}

class _MotPasseOublieState extends State<MotPasseOublie> {
  final TextEditingController _emailController = TextEditingController();

  bool _emailError = false;

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$',
  );

  void validateFields() {
    setState(() {
      _emailError = _emailController.text.isEmpty ||
          !emailRegex.hasMatch(_emailController.text);
    });

    if (!_emailError) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OtpScreen()));
      debugPrint("Le texte dans email est ${_emailController.text}");
    } else {}
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
          'Mot de passe oublié',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: 'Montserrat-Bold',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0.08 * screenWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 0.5 * screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              TextFormFieldCustom(
                hint: 'Entrer votre email',
                label: 'Email',
                controller: _emailController,
                regex: emailRegex,
                errorMessage: _emailError && _emailController.text.isEmpty
                    ? "Email vide"
                    : "Email invalide",
                isError: _emailError,
                isHidden: false,
                updateErrorState: () => setState(
                  () => _emailError = _emailController.text.isEmpty ||
                      !emailRegex.hasMatch(_emailController.text),
                ),
              ),
              SizedBox(height: 0.1 * screenWidth),
              Container(
                width: screenWidth,
                child: MyButton(
                  text: "Envoyer un code",
                  onTap: () {
                    validateFields();
                  },
                ),
              ),
              SizedBox(height: 0.36 * screenHeight),
              SignInOption(
                textBefore: 'Vous avez un compte ? ',
                actionText: 'Se connecter ',
                onTap: () {
                  Navigator.push(context as BuildContext,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
