import 'package:flutter/material.dart';

class LoginBottomRight extends StatefulWidget {
  const LoginBottomRight({Key? key}) : super(key: key);

  @override
  State<LoginBottomRight> createState() => _LoginBottomRightState();
}

class _LoginBottomRightState extends State<LoginBottomRight> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 60,
            width: 123,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80),
                  topLeft: Radius.circular(80),
                ),
                color: Colors.white.withOpacity(0.3)),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 120,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(100),
                topLeft: Radius.circular(100),
              ),
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ],
    );
  }
}
