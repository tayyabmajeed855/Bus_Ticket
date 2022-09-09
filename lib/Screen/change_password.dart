import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _passwordVisible = false;
  bool _confirmpasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF20242A),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 80,
                  child: SvgPicture.asset("assets/images/ticket.svg")),
              SizedBox(
                height: 50,
              ),
              Text(
                "Change Password",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xFFFED32C), fontSize: 20),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Change your password to secure your account",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xFF848484), fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 47, left: 40, right: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF2B3038)),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFFC6C6C6),
                  ),
                  //controller: _userEmailController,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    //  prefixText: 'Email',
                    hintText: 'New Password',
                    hintStyle: const TextStyle(
                        color: Color(
                          0xFFC6C6C6,
                        ),
                        fontSize: 14),
                    suffixIcon: IconButton(
                      splashRadius: Material.defaultSplashRadius / 1.5,
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 20,
                        color: Color(0xFFC6C6C6),
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    border: InputBorder.none,
                    //  fillColor: Color(0xFF2B3038),
                    filled: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 40, right: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF2B3038)),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFFC6C6C6),
                  ),
                  //controller: _userEmailController,
                  obscureText: _confirmpasswordVisible,
                  decoration: InputDecoration(
                    //  prefixText: 'Email',
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        color: Color(
                          0xFFC6C6C6,
                        ),
                        fontSize: 14),
                    suffixIcon: IconButton(
                      splashRadius: Material.defaultSplashRadius / 1.5,
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _confirmpasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 20,
                        color: Color(0xFFC6C6C6),
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _confirmpasswordVisible = !_confirmpasswordVisible;
                        });
                      },
                    ),
                    border: InputBorder.none,
                    //  fillColor: Color(0xFF2B3038),
                    filled: true,
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 72, left: 40, right: 40),
                child: Image.asset("assets/images/update.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
