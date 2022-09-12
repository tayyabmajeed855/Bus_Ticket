import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:bus_ticket/Folder/vehicle_inspection.dart';
import 'package:bus_ticket/Profile/profile.dart';
import 'package:bus_ticket/Screen/scanner.dart';
import 'package:bus_ticket/Widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Setting/setting.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FolderWidget(),
    const Profile(),
    const SettingScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20242A),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _widgetOptions[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFED32C),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Scanner(),
            ),
          );
        },
        child: const Icon(
          Icons.qr_code,
          size: 34,
          color: Color(0xFF2B3038),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BubbleBottomBar(
          backgroundColor: const Color(0xFF2B3038),
          opacity: .2,
          currentIndex: currentIndex,
          onTap: changePage,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          elevation: 6,
          fabLocation: BubbleBottomBarFabLocation.center,
          //new
          hasNotch: true,
          //new
          hasInk: true,
          //new, gives a cute ink effect
          inkColor: Colors.black,
          //optional, uses theme color if not specified
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: const Color(0xFF000000),
                icon: const Icon(
                  Icons.home,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: const Icon(
                  Icons.home,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: Color(0xFF000000),
                icon: const Icon(
                  Icons.folder,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: const Icon(
                  Icons.folder,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Folder",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: const Color(0xFF000000),
                icon: const Icon(
                  Icons.person,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: const Icon(
                  Icons.person,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xFFFED32C),
                      ),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: const Color(0xFF000000),
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: const Icon(
                  Icons.settings,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}
