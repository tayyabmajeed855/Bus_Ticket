import 'package:bus_ticket/Screen/change_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.headline3?.copyWith(color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20242A),
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: SvgPicture.asset("assets/images/ticket.svg"),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Verification",
                style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: Color(0xFFFED32C), fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(left: 66, right: 66),
                child: Text(
                    "The code will be sent via mobile number Insert your code here:",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xFF848484),
                        fontSize: 12,
                      ),
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  numberOfFields: 4,
                  // borderColor: const Color(0xFF848484),
                  textStyle: const TextStyle(color: Colors.white),
                  focusedBorderColor: Color(0xFF848484),
                  enabledBorderColor: Color(0xFF848484),
                  //  focusedBorderColor: accentPurpleColor,
                  //styles: ot,
                  showFieldAsBox: false, borderWidth: 0.6,
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangePassword()));
                },
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/continue.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Resent code",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(color: Color(0xFF848484), fontSize: 14)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
