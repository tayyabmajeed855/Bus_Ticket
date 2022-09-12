import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Notification/profile_notification.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20242A),
      body: Container(
        padding: EdgeInsets.only(
          top: 42,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  splashRadius: Material.defaultSplashRadius / 1.5,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFFFED32C),
                  ),
                ),
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Color(0xFFFED32C),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
                ),
                IconButton(
                  splashRadius: Material.defaultSplashRadius / 1.5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileNotification(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Color(0xFFFED32C),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 43,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Google Privacy",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFED32C),
                        ),
                      ),
                    ),
                    Text(
                      "Read Mobile Privacy Policy",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6B6E74),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Open Source Licence",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFED32C),
                        ),
                      ),
                    ),
                    Text(
                      "License detail for open-source software",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6B6E74),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "App version",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFED32C),
                        ),
                      ),
                    ),
                    Text(
                      "10.06.34",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6B6E74),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
