import 'package:bus_ticket/Screen/dashboard.dart';
import 'package:bus_ticket/Screen/forgot_password.dart';
import 'package:bus_ticket/Screen/signup_screen.dart';
import 'package:bus_ticket/Widget/login_bottom_right.dart';
import 'package:bus_ticket/Widget/login_top_left.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _userPasswordController = TextEditingController();
  var _userEmailController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF20242A),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(child: const LoginTopLeft()),
            const Align(
              alignment: Alignment.bottomRight,
              child: LoginBottomRight(),
            ),
            SizedBox(
              height: 62,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 76),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/images/ticket.svg",
                          height: 114, width: 126),
                      const SizedBox(
                        height: 62,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF2B3038)),
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: Color(0xFFC6C6C6),
                            ),
                            controller: _userEmailController,
                            //obscureText: true,
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 14, left: 12),
                              //  prefixText: 'Email',
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Color(
                                    0xFFC6C6C6,
                                  ),
                                  fontSize: 14),
                              suffixIcon: Icon(Icons.person,
                                  size: 20,
                                  color: Color(
                                    0xFFC6C6C6,
                                  )),
                              border: InputBorder.none,
                              //  fillColor: Color(0xFF2B3038),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFF2B3038)),
                        child: TextFormField(
                          style: const TextStyle(color: Color(0xFFC6C6C6)),
                          keyboardType: TextInputType.text,
                          controller: _userPasswordController,
                          obscureText: !_passwordVisible,
                          //This will obscure text dynamically
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 14, left: 12),
                            border: InputBorder.none,
                            // / fillColor: const Color(0xFF2B3038),
                            filled: true,
                            hintText: 'Password',
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
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()));
                            },
                            child: Text(
                              "Forgot Password",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(
                                      0xFF848484,
                                    ),
                                    fontSize: 12),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()),
                          );
                        },
                        child: Container(
                            height: 50,
                            child:
                                Image.asset("assets/images/login_button.png")),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 134, bottom: 70),
                        child: RichText(
                          text: TextSpan(
                              text: 'Already have an Account? ',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFF848484), fontSize: 14),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Sign up Here',
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.underline,
                                      textStyle: const TextStyle(
                                        color: Color(0xFFFED32C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUp()));
                                      }),
                              ]),
                        ),
                      ),
                    ],
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
