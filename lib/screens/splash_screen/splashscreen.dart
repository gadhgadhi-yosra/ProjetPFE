import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
          primaryColor: AppColors.primaryColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: AppColors.secondaryColor,
            tertiary: AppColors.tertiaryColor,
          ),
          useMaterial3: true,
          dialogBackgroundColor: Colors.white,
          dialogTheme: const DialogTheme(elevation: 0)),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        nextScreen: OnBoardingScreen(),
      ),
    );
  }
}
