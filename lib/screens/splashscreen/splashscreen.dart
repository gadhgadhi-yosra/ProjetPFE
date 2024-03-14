import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:piecexpresspfe/pages/favorie.dart';

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
      theme: ThemeData(fontFamily: "Montsserat"),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        nextScreen: const FavoritePage(),
      ),
    );
  }
}
