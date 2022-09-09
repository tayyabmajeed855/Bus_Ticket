import 'dart:math' as math;

import 'package:flutter/material.dart';

class LoginTopLeft extends StatefulWidget {
  const LoginTopLeft({Key? key}) : super(key: key);

  @override
  State<LoginTopLeft> createState() => _LoginTopLeftState();
}

class _LoginTopLeftState extends State<LoginTopLeft> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 123,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        Container(
          height: 114,
          width: 54,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white.withOpacity(0.4);
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
