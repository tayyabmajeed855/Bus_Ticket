import 'package:bus_ticket/Notification/profile_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoogleMapController _googleMapController;
  Marker? _origin;
  Marker? _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.431297),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(color: Color(0xFFFED32C), fontSize: 20),
              fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          IconButton(
            splashRadius: Material.defaultSplashRadius / 1.5,
            splashColor: const Color(0xFF00000029),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Current Route",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFFFFFFF), fontSize: 14)),
                ),
                Text(
                  "View All",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontSize: 12,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 24,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF2B3038),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 40),
                            height: 24,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                color: Color(0xFFFED32C)),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: EdgeInsets.only(right: 12),
                                child: Text(
                                  "02",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color(0xFF2B3038),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )),
                        Container(
                          height: 24,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF2B3038)),
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 8, bottom: 8, left: 40, right: 12),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 134,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFED32C)),
                child: Container(
                  padding: EdgeInsets.only(left: 8, top: 9),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            size: 16,
                            color: Color(0xFF2B3038),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            child: Text(
                              "IQBAL SPEAKERS WORKS Office, Shahrah-e\n Quaid-e-Azam, opposite St",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color(0xFF2B3038), fontSize: 12),
                              ),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 18, left: 10, top: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 67,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF2B3038)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Waiting Persons",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 12),
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFED32C)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "09",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 20),
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFED32C)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Expanded(
                              child: Container(
                                height: 67,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF2B3038)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Leave Persons",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 12),
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFED32C)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "02",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 20),
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFED32C)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.only(left: 100),
                  child: Image.asset(
                    "assets/images/traiangle.png",
                    height: 17,
                    width: 19,
                    color: Color(0xFFFED32C),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    markers: {
                      if (_origin != null) _origin!,
                      if (_destination != null) _destination!,
                    },
                    onMapCreated: (GoogleMapController controller) {
                      _googleMapController = controller;
                    },
                    onTap: _addMarker,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
          markerId: const MarkerId("origin"),
          infoWindow: const InfoWindow(title: "Origin"),
        );
        _destination = null;
      });
    } else {
      setState(() {
        _destination = Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
          markerId: const MarkerId("destination"),
          infoWindow: const InfoWindow(title: "Destination"),
        );
      });
    }
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, Paint()..color = Colors.green);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
