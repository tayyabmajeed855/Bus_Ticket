import 'package:bus_ticket/Notification/profile_notification.dart';
import 'package:bus_ticket/Profile/document_details.dart';
import 'package:bus_ticket/Profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.only(top: 42),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
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
                  width: double.infinity,
                ),
                SizedBox(
                  height: 69,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileDetails()),
                    );
                  },
                  child: Container(
                    height: 92,
                    width: 92,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2B3038)),
                    child: Image.asset("assets/images/profile.png"),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  "Profile Details",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: const Color(0xFFC6C6C6), fontSize: 14)),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DocumentDetails()),
                    );
                  },
                  child: Container(
                    height: 92,
                    width: 92,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2B3038)),
                    child: Image.asset("assets/images/details.png"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 17, bottom: 20),
                  child: Text(
                    "Document Details",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xFFC6C6C6), fontSize: 14)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
