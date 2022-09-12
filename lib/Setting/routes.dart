import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Notification/profile_notification.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> with SingleTickerProviderStateMixin {
  static const List<Tab> _kTabsPages = <Tab>[
    Tab(text: 'Today'),
    Tab(text: 'Tomorrow'),
  ];

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _kTabsPages.length);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20242A),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          splashRadius: Material.defaultSplashRadius / 1.5,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFFED32C),
          ),
        ),
        title: Text(
          "My routes",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            color: Color(0xFFFED32C),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          )),
        ),
        actions: [
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Align(
            alignment: Alignment.topLeft,
            child: TabBar(
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xFFFED32C),
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFF6B6E74),
              labelStyle:
                  GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16)),
              tabs: const [
                Tab(text: 'Today'),
                Tab(text: 'Tomorrow'),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 60,
              color: const Color(0xFF2B3038),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                // / bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(60)),
                            color: Color(0xFFFED32C)),
                      ),
                    ),
                    Text(
                      "DAY START",
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child:
                  TabBarView(controller: _tabController, children: _kTabsPages),
            ),
          ],
        ),
      ),
    );
  }
}
