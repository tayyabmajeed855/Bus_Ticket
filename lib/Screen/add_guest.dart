import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddGuest extends StatefulWidget {
  const AddGuest({Key? key}) : super(key: key);

  @override
  State<AddGuest> createState() => _AddGuestState();
}

class _AddGuestState extends State<AddGuest> {
  final List<String> _genders = [
    'Select Gender',
    'Male',
    'Female',
    'Other',
  ]; // Option 2
  String _selectedGender = 'Select Gender';
  final List<String> adultSeat = [
    'Adult Seat',
    '',
    '',
    '',
  ]; // Option 2
  String _adultSeat = 'Adult Seat';
  final List<String> childSeat = [
    'Child Seat',
    '',
    '',
    '',
  ]; // Option 2
  String _childSeat = 'Child Seat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20242A),
      body: Container(
        padding: const EdgeInsets.only(top: 46, left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Guest",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.white),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/cross.png",
                    height: 12,
                    width: 12,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 74,
                width: double.infinity,
                color: const Color(0xFF2B3038),
                child: Container(
                  padding: const EdgeInsets.only(top: 15, left: 32, right: 34),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Booking Date",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFFA2A2A2), fontSize: 12)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "A196416",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            "Booking Date",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFFA2A2A2), fontSize: 12)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "A196416",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 33,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFFED32C), width: 1),
                  color: const Color(0xFF2B3038),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Total Miles:",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 12),
                            color: const Color(0xFFFED32C)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "23 ml",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 14),
                            color: const Color(0xFFFED32C),
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Text(
                        "Total Miles:",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 12),
                            color: const Color(0xFFFED32C)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "23 ml",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 14),
                            color: const Color(0xFFFED32C),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: const Color(0xFF2B3038),
                height: 26,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Destination To",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.white),
                      fontSize: 12),
                )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xFFFED32C),
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Add drop off Stop",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xFFFED32C), fontSize: 14),
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                color: const Color(0xFF2B3038),
                height: 26,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Current Stop",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.white),
                      fontSize: 12),
                )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 14, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xFFFFFFFF),
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "IQBAL SPEAKERS WORKS Office, Shahrah-e Quaid-e-Azam, opposite St",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xFFFFFFFF), fontSize: 14),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 21),
                height: 26,
                width: double.infinity,
                color: const Color(0xFFFED32C),
                child: Center(
                    child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Personal info",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF20242A),
                              ),
                              fontSize: 12),
                        ),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                )),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF2B3038),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Name",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFC6C6C6), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF2B3038),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Phone",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFC6C6C6), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF2B3038),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFC6C6C6), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF2B3038),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Address",
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color(0xFFC6C6C6), fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFF2B3038)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _selectedGender,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFC6C6C6),
                    ),
                    items: _genders.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xFFC6C6C6), fontSize: 14)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedGender = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                height: 26,
                width: double.infinity,
                color: const Color(0xFFFED32C),
                child: Center(
                    child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Trip Info",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF20242A),
                              ),
                              fontSize: 12),
                        ),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_sharp)
                  ],
                )),
              ),
            const   SizedBox(height: 22,),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFF2B3038)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _adultSeat,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFC6C6C6),
                    ),
                    items: adultSeat.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xFFC6C6C6), fontSize: 14)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _adultSeat = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFF2B3038)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    value: _selectedGender,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xFFC6C6C6),
                    ),
                    items: _genders.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xFFC6C6C6), fontSize: 14)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedGender = newValue!;
                      });
                    },
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 32, bottom: 20),
                height: 50,
                child: Image.asset("assets/images/next.png"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
