import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentDetails extends StatefulWidget {
  const DocumentDetails({Key? key}) : super(key: key);

  @override
  State<DocumentDetails> createState() => _DocumentDetailsState();
}

class _DocumentDetailsState extends State<DocumentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20242A),
      body: Container(
        padding: EdgeInsets.only(top: 42),
        child: Column(
          children: [
            Container(
              child: Row(
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
                    "Documents",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color(0xFFFED32C),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    )),
                  ),
                  IconButton(
                    splashRadius: Material.defaultSplashRadius / 1.5,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Color(0xFFFED32C),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          bottom: 20,
                          right: 20,
                        ),
                        height: 68,
                        width: double.infinity,
                        color: Color(0xFF2B3038),
                        child: Container(
                          padding: EdgeInsets.only(left: 20, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Document Name",
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "08/09/2022",
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            TextStyle(color: Color(0xFFA2A2A2)),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/images/eye.svg",
                                    height: 18,
                                    width: 18,
                                    color: Color(0xFFFED32C),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/images/edit.svg",
                                    height: 18,
                                    width: 18,
                                    color: Color(0xFFFED32C),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 30,
                                    width: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                        ),
                                        color: Color(0xFFC0C1C4)),
                                    child: Center(
                                      child: Text(
                                        String.fromCharCode(CupertinoIcons
                                            .clear_thick.codePoint),
                                        style: TextStyle(
                                          inherit: false,
                                          color: Colors.red,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: CupertinoIcons
                                              .clear_thick.fontFamily,
                                          package: CupertinoIcons
                                              .clear_thick.fontPackage,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 30, top: 16),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFFED32C)),
              child: Center(
                child: Text(
                  "ADD NEW DOCUMENT",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFF574F2A), fontSize: 16),
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
