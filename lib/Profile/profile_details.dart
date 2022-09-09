import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20242A),
      body: Container(
          width: MediaQuery.of(context).size.width,
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
                  Text(
                    "Profile Details",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color(0xFFFED32C),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    )),
                  ),
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
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 40),
                              alignment: Alignment.center,
                              // color: Colors.purpleAccent,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _pickImageFromGallery();
                                    },
                                    child: Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Color(0xFF8F7C2B),
                                              width: 5),
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: (_image != null)
                                              ? Image.file(
                                                  _image!,
                                                  fit: BoxFit.cover,
                                                )
                                              : Image.asset(
                                                  "assets/images/person.png",
                                                  fit: BoxFit.cover,
                                                ),
                                        )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 96, top: 36),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color(0xFFFED32C).withOpacity(0.8)),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 20,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.edit_calendar_outlined,
                                  size: 12,
                                  color: Color(0xFFFED32C),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Edit",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Color(0xFFFED32C),
                                          fontSize: 12)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        height: 43,
                        child: Text(
                          "Afnan Naveed",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.white),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Text(
                        "Afnan.naveed@hotmail.com",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 33, left: 20, right: 20),
                      height: 77,
                      width: double.infinity,
                      color: Color(0xFF2B3038),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CNIC",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 14)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "35201-123457896-9",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                      height: 77,
                      width: double.infinity,
                      color: Color(0xFF2B3038),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 14)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "+92 3089135843",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                      height: 77,
                      width: double.infinity,
                      color: Color(0xFF2B3038),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 14)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Address 1234566",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                      height: 77,
                      width: double.infinity,
                      color: Color(0xFF2B3038),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 14)),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Male",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color(0xFFA2A2A2), fontSize: 16)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 22, bottom: 78),
                      child: Center(
                        child: Text(
                          "Change Password",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            textStyle: TextStyle(
                                color: Color(0xFFFED32C), fontSize: 14),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
