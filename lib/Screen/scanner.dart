import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_guest.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF878787),
      body: Container(
        padding: EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 119,
              ),
              Text(
                "Scan QR code",
                style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(color: Color(0xFFFED32C), fontSize: 16),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Place a QR code inside the frame to scan please avoid shake to get results quickly",
                style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 135,
              ),
              Image.asset(
                "assets/images/scanner.png",
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                "Scanning code....",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddGuest()));
              },
                child: Container(
                    margin: EdgeInsets.only(top: 130, bottom: 72),
                    height: 50,
                    child: Image.asset("assets/images/add_guest.png")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
