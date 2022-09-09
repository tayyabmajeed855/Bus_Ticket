import 'dart:ui';

import 'package:bus_ticket/Screen/splash1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
// Here you can write your code
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Splash1(),
          // builder: (context) => TestingScreen(),
        ),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF303339), Color(0xFF20242A)],
          ),
        ),
      ),
    );
  }
}
