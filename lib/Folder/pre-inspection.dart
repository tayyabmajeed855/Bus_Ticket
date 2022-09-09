import 'package:bus_ticket/Screen/dashboard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PreInspection extends StatefulWidget {
  const PreInspection({Key? key}) : super(key: key);

  @override
  State<PreInspection> createState() => _PreInspectionState();
}

class _PreInspectionState extends State<PreInspection> {
  bool _value = true;
  bool _value1 = true;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = true;
  int activateIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/hand.png"),
          SizedBox(
            height: 23,
          ),
          Text(
            "Engine",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFF2B3038)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/car1.png",
            fit: BoxFit.cover,
            height: 50,
            width: 68,
            color: Color(0xFFC6C6C6),
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            "Exterior",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 19)),
          )
        ],
      ),
    ),
  ];

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
            "Vehicle Inspection",
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
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Color(0xFFFED32C),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 75),
                      child: CarouselSlider.builder(
                        itemCount: _widgetOptions.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImage = _widgetOptions[index];
                          return _buildImage(urlImage, index);
                        },
                        options: CarouselOptions(
                            onPageChanged: (index, reason) =>
                                setState(() => activateIndex = index),
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                            //  enlargeStrategy: CenterPageEnlargeStrategy.height,
                            // autoPlay: true,
                            // reverse: true,
                            height: 162.0,
                            autoPlayInterval: Duration(seconds: 2)),
                      ),
                    ),
                    SizedBox(
                      height: 53,
                    ),
                    _buildIndicator(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2B3038)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Engine",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFC6C6C6), fontSize: 14)),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4EA35C)),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 10.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 10.0,
                                        color: Color(0xFF4EA35C),
                                      ),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2B3038)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Interior",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFC6C6C6), fontSize: 14)),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4EA35C)),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 10.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 10.0,
                                        color: Color(0xFF4EA35C),
                                      ),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2B3038)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exterior",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFC6C6C6), fontSize: 14)),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4EA35C)),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 10.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 10.0,
                                        color: Color(0xFF4EA35C),
                                      ),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2B3038)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Documents",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFC6C6C6), fontSize: 14)),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4EA35C)),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 10.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 10.0,
                                        color: Color(0xFF4EA35C),
                                      ),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF2B3038)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Driver details",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFC6C6C6), fontSize: 14)),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _value = !_value;
                                });
                              },
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF4EA35C)),
                                child: _value
                                    ? Icon(
                                        Icons.check,
                                        size: 10.0,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: 10.0,
                                        color: Color(0xFF4EA35C),
                                      ),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 46, left: 40, right: 40, bottom: 30),
                        height: 50,
                        child: Image.asset("assets/images/next.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildImage(Widget _widgetOptions, int index) => Container(
        child: _widgetOptions,
      );

  Widget _buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activateIndex,
        count: _widgetOptions.length,
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          dotWidth: 10,
          dotColor: Color(0xFFC6C6C6),
          activeDotColor: Color(0xFFFED32C),
        ),
      );
}
