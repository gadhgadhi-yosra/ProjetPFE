import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/screens/authentificarion_screens/signin_screen.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  bool _emailError = false;

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$',
  );
  final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  void validateFields() {
    setState(() {});

    if (!_emailError) {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

      debugPrint("Code OTP est ${_otpController.text}");
    }
  }

  Widget textFormField({
    required String hint,
    required String label,
    required TextEditingController controller,
    required RegExp regex,
    required String errorMessage,
    required bool isError,
    bool isPasswordField = false, // Ajoutez ce paramètre

    VoidCallback? updateErrorState,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: textStyle),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: isError
                  ? const BorderSide(color: Colors.red, width: 1.0)
                  : BorderSide(color: Colors.grey.withOpacity(0.3), width: 1.0),
            ),
            hintText: hint,
            hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7),
                fontFamily: "Montserrat"),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          onChanged: (value) {
            if (!regex.hasMatch(value) && !value.isEmpty) {
              if (!isError) {
                updateErrorState?.call();
              }
            } else {
              if (isError) {
                updateErrorState?.call();
              }
            }
          },
        ),
        isError
            ? Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              )
            : Container(),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  static const textStyle = TextStyle(
      fontFamily: "Montserrat", fontSize: 15, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          "OTP",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Montserrat",
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                  child: SizedBox(
                      height: 100,
                      child: Image.asset("assets/images/logo.png"))),
              const SizedBox(height: 120),
              const Text(
                "Code OTP",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              PinCodeTextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                ],
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(4),
                  fieldHeight: 55,
                  fieldWidth: 55,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.orange,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: _otpController,
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                onChanged: (value) {
                  debugPrint(value);
                },
                beforeTextPaste: (text) {
                  return true;
                },
              ),
              const SizedBox(height: 40),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: MyButton(text: 'Vérifier le code', onTap: () {})),
              const SizedBox(height: 245),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Vous n'avez pas reçu le code ?",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                    const SizedBox(width: 5),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [Color(0xFFF05F79), Color(0xFFF9B718)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen()));
                        },
                        child: const Text(
                          "Renvoyer",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
