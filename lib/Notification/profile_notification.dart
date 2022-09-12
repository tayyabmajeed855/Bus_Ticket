import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileNotification extends StatefulWidget {
  const ProfileNotification({Key? key}) : super(key: key);

  @override
  State<ProfileNotification> createState() => _ProfileNotificationState();
}

class _ProfileNotificationState extends State<ProfileNotification> {
  String myText = "Your appointment request has been accepted.";

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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 20),
                    alignment: Alignment.center,
                    // color: Colors.purpleAccent,
                    child: Text(
                      "Notifications",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        color: Color(0xFFFED32C),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 10),
                itemCount: 14,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  // alignment: Alignment.topLeft,
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.66),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    //  padding: const EdgeInsets.all(10),
                    color: Color(0xFF2B3038),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              child: Text(
                                "Your appointment request has been accepted.",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 12),
                                ),
                                maxLines: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Text(
                            "12:00 PM",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFFA2A2A2), fontSize: 10)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
