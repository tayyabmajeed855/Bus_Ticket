import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:bus_ticket/Folder/vehicle_inspection.dart';
import 'package:bus_ticket/Profile/profile.dart';
import 'package:bus_ticket/Widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FolderWidget(),
    Profile(),
    Container(color: Color(0xFF20242A)),
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
      backgroundColor: Color(0xFF20242A),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _widgetOptions[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFED32C),
        onPressed: () {},
        child: Icon(
          Icons.qr_code,
          size: 34,
          color: Color(0xFF2B3038),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 70,
        child: BubbleBottomBar(
          backgroundColor: Color(0xFF2B3038),
          opacity: .2,
          currentIndex: currentIndex,
          onTap: changePage,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
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
                backgroundColor: Color(0xFF000000),
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: Color(0xFF000000),
                icon: Icon(
                  Icons.folder,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: Icon(
                  Icons.folder,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Folder",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: Color(0xFF000000),
                icon: Icon(
                  Icons.person,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                )),
            BubbleBottomBarItem(
                backgroundColor: Color(0xFF000000),
                icon: Icon(
                  Icons.settings,
                  color: Color(0xFFC6C6C6),
                ),
                activeIcon: Icon(
                  Icons.settings,
                  color: Color(0xFFFED32C),
                ),
                title: Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color(0xFFFED32C)),
                      fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}
