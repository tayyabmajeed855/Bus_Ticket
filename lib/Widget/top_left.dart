import 'package:flutter/material.dart';

class TopLeft extends StatefulWidget {
  const TopLeft({Key? key}) : super(key: key);

  @override
  State<TopLeft> createState() => _TopLeftState();
}

class _TopLeftState extends State<TopLeft> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 183,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        Container(
          height: 183,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
