import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/customTextFormFeild.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController adresseController = TextEditingController();

  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;

  bool _emailError = false;
  bool _passwordError = false;
  bool _confirmPasswordError = false;
  bool _nameError = false;
  bool _numeroError = false;
  bool _adresseError = false;

  final RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$');
  final RegExp passwordRegex = RegExp(r'^.{8,}$');
  final RegExp nameRegex = RegExp(r'^[a-zA-Z ]{2,}$');
  final RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
  final RegExp adresseRegex = RegExp(r'^.{5,}$');

  void validateFields() {
    setState(() {
      _emailError = emailController.text.isEmpty ||
          !emailRegex.hasMatch(emailController.text);
      _passwordError = passwordController.text.isEmpty ||
          !passwordRegex.hasMatch(passwordController.text);
      _confirmPasswordError = confirmPasswordController.text.isEmpty ||
          confirmPasswordController.text != passwordController.text;
      _nameError = nameController.text.isEmpty ||
          !nameRegex.hasMatch(nameController.text);
      _numeroError = numeroController.text.isEmpty ||
          !phoneRegex.hasMatch(numeroController.text);
      _adresseError = adresseController.text.isEmpty ||
          !adresseRegex.hasMatch(adresseController.text);
    });

    if (!_emailError &&
        !_passwordError &&
        !_confirmPasswordError &&
        !_nameError &&
        !_numeroError &&
        !_adresseError) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Profil mis à jour avec succès !")));
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Montserrat-Bold',
              fontWeight: FontWeight.bold,
              fontSize: 18),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.04,
            height: screenHeight * 0.04,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.05,
              height: screenHeight * 0.05,
            ),
            onPressed: () {
              Navigator.push(context as BuildContext,
                  MaterialPageRoute(builder: (context) => const PanierPiece()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  print('Edit Image tapped');
                },
                child: Center(
                  child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.15,
                          backgroundImage:
                              const AssetImage('assets/images/yos.png'),
                        ),
                        Container(
                          width: screenWidth * 0.08,
                          height: screenHeight * 0.08,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.secondaryColor,
                          ),
                          child: IconButton(
                              color: AppColors.secondaryColor,
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/editing.png',
                                height: screenWidth * 0.04,
                                width: screenWidth * 0.04,
                              )),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              TextFormFieldCustom(
                hint: 'Entrez votre nom',
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFormFieldCustom(
                hint: 'Entrez votre adresse email',
                label: 'Adresse Email',
                controller: emailController,
                regex: emailRegex,
                errorMessage: emailController.text.isEmpty
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
                hint: 'Entrez votre numéro de téléphone',
                label: 'Numéro de téléphone',
                controller: numeroController,
                regex: phoneRegex,
                errorMessage: numeroController.text.isEmpty
                    ? "Numéro de téléphone vide"
                    : "Numéro de téléphone invalide",
                isError: _numeroError,
                isHidden: false,
                updateErrorState: () =>
                    setState(() => _numeroError = !_numeroError),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Entrez votre Adresse',
                label: 'Adresse',
                controller: adresseController,
                regex: phoneRegex,
                errorMessage: adresseController.text.isEmpty
                    ? "Numéro de téléphone vide"
                    : "Numéro de téléphone invalide",
                isError: _adresseError,
                isHidden: false,
                updateErrorState: () =>
                    setState(() => _adresseError = !_adresseError),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Entrez votre mot de passe',
                label: 'Mot de passe',
                controller: passwordController,
                regex: passwordRegex,
                errorMessage: passwordController.text.isEmpty
                    ? "Mot de passe vide"
                    : "Mot de passe invalide",
                isError: _passwordError,
                isHidden: _isObscurePassword,
                updateErrorState: () => setState(
                  () => _passwordError = !_passwordError,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormFieldCustom(
                hint: 'Confirmez votre mot de passe',
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
                text: "Confirmer",
                onTap: validateFields,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
