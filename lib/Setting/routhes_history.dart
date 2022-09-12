import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Notification/profile_notification.dart';

class RoutesHistory extends StatefulWidget {
  const RoutesHistory({Key? key}) : super(key: key);

  @override
  State<RoutesHistory> createState() => _RoutesHistoryState();
}

class _RoutesHistoryState extends State<RoutesHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF20242A),
      body: Container(
        padding: const EdgeInsets.only(
          top: 42,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
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
                    "Routes History",
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
                          builder: (context) => const ProfileNotification(),
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
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding:
                    EdgeInsets.only(top: 36, bottom: 10, left: 20, right: 20),
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 20),
                  color: Color(0xFF2B3038),
                  child: Container(
                    padding: EdgeInsets.only(left: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 9, top: 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "03/04/2022",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 12),
                                    color: Color(0xFFFFFFFF)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Route Name",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 14),
                                    color: Color(0xFFFED32C),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 25,
                                  width: 99,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5)),
                                      color: Color(0xFF71B175)),
                                  child: Center(
                                    child: Text(
                                      "Completed",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 12),
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Stops:',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 12),
                                    color: Color(0xFFFFFFFF).withOpacity(0.3),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '     25',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        fontSize: 12,
                                        color:
                                            Color(0xFFFFFFFF).withOpacity(0.4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
