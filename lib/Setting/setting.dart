import 'package:bus_ticket/Notification/profile_notification.dart';
import 'package:bus_ticket/Setting/about.dart';
import 'package:bus_ticket/Setting/routes.dart';
import 'package:bus_ticket/Setting/routhes_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
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
                            builder: (context) => ProfileNotification()),
                      );
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: Color(0xFFFED32C),
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  )
                ],
              ),
              SizedBox(
                height: 46,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Routes(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFF2B3038),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFFFED32C),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "My Routes",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RoutesHistory()));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFF2B3038),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/clock-date-calendar.svg",
                        height: 20,
                        width: 20,
                        color: Color(0xFFFED32C),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Routes History",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      title: Text(
                        "Logging Out....",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFF282F39), fontSize: 20),
                            fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                        "Are you sure you want to logout from your account ?",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFF7F7F7F), fontSize: 16)),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "NO",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 13),
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFA2A2A2)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "YES",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 13),
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFED32C)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFF2B3038),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Color(0xFFFED32C),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Logout",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "HELP",
                  style: GoogleFonts.nunitoSans(
                      textStyle:
                          TextStyle(color: Color(0xFFA6B1C0), fontSize: 15),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                height: 60,
                width: double.infinity,
                color: Color(0xFF2B3038),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/pages.svg",
                      height: 20,
                      width: 20,
                      color: Color(0xFFFED32C),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 16)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                height: 60,
                width: double.infinity,
                color: Color(0xFF2B3038),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/copy-line.svg",
                      height: 20,
                      width: 20,
                      color: Color(0xFFFED32C),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Privacy Policies",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 16)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutApp(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFF2B3038),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Color(0xFFFED32C),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "About",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  _modalBottomSheetMenu();
                },
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFF2B3038),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFFFED32C),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "Contact us",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        isDismissible: false,
        backgroundColor: Color(0xFF20242A),
        barrierColor: Color(0xFF202020).withOpacity(0.87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, right: 38, left: 39),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF6B6E74)),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Contact us",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 18),
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color(0xFFFED32C),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Call",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xFFFED32C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "+92 334 9775344",
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xFF6B6E74)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 34),
                  child: Divider(
                    thickness: 0.5,
                    color: Color(
                      0xFF6B6E74,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xFFFED32C),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xFFFED32C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "hassan123@gmail.com",
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xFF6B6E74)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 34),
                  child: Divider(
                    thickness: 0.5,
                    color: Color(
                      0xFF6B6E74,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Color(0xFFFED32C),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chat",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xFFFED32C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Live Chat",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Color(0xFF6B6E74)),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
