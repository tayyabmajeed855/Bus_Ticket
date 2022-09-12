import 'package:bus_ticket/Folder/pre-inspection.dart';
import 'package:bus_ticket/Notification/profile_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FolderWidget extends StatefulWidget {
  const FolderWidget({Key? key}) : super(key: key);

  @override
  State<FolderWidget> createState() => _FolderWidgetState();
}

class _FolderWidgetState extends State<FolderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.only(
          top: 38,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vehicle Inspection",
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
                                builder: (context) => ProfileNotification()));
                      },
                      icon: const Icon(
                        Icons.notifications,
                        color: Color(0xFFFED32C),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PreInspection()));
                },
                child: Container(
                  height: 152,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xFF2B3038),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/folder1.png",
                        width: 96,
                        height: 72,
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Text(
                        "Pre-Inspection",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color(0xFFFED32C), fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 54,
              ),
              Container(
                height: 152,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xFF2B3038),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/folder2.png",
                      width: 96,
                      height: 72,
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      "Post-Inspection",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xFFC6C6C6), fontSize: 16)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
