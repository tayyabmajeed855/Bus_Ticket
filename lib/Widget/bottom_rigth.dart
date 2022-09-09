import 'package:flutter/material.dart';

class BottomRight extends StatefulWidget {
  const BottomRight({Key? key}) : super(key: key);

  @override
  State<BottomRight> createState() => _BottomRightState();
}

class _BottomRightState extends State<BottomRight> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 100,
            width: 183,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                ),
                color: Colors.white.withOpacity(0.3)),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 183,
            width: 100,
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
