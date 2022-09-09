import 'package:bus_ticket/Screen/login_screen.dart';
import 'package:bus_ticket/Widget/bottom_rigth.dart';
import 'package:bus_ticket/Widget/top_left.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
// Here you can write your code
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          // builder: (context) => TestingScreen(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF303339), Color(0xFF20242A)],
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const TopLeft(),
              const Align(
                alignment: Alignment.bottomRight,
                child: BottomRight(),
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/images/ticket.svg",
                  height: 190,
                  width: 210,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
