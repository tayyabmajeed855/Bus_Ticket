import 'package:bus_ticket/Notification/profile_notification.dart';
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
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                        ),
                        height: 68,
                        width: double.infinity,
                        color: Color(0xFF2B3038),
                        child: Container(
                          padding: EdgeInsets.only(left: 20, bottom: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Document Name",
                                      style: GoogleFonts.poppins(
                                          textStyle:
                                              TextStyle(color: Colors.white),
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "08/09/2022",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: Color(0xFFA2A2A2)),
                                          fontSize: 10),
                                    )
                                  ],
                                ),
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
                                //  alignment: Alignment.topLeft,
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(60),
                                        ),
                                        color: Color(0xFFC0C1C4)),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 6, bottom: 4),
                                      child: Icon(
                                        Icons.close,
                                        color: Color(0xFFFF5959),
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
