import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _addressController = TextEditingController();
  var _confirmPasswordController = TextEditingController();
  final List<String> _genders = [
    'Select Gender',
    'Male',
    'Female',
    'Other',
  ]; // Option 2
  String _selectedGender = 'Select Gender';
  bool _checkVal = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF20242A),
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 11),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                    "Create an Account",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color(0xFF848484), fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xFFFED32C)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5, left: 4),
                          child: Image.asset(
                            "assets/images/gradient_image.png",
                            //width: 233,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.only(top: 2, left: 250),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xFF2B3038)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _nameController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _phoneController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Phone',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
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
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _emailController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
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
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _addressController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Address',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
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
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _passwordController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
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
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF2B3038)),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color(0xFFC6C6C6),
                      ),
                      controller: _confirmPasswordController,
                      //obscureText: true,
                      decoration: const InputDecoration(
                        //  prefixText: 'Email',
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            color: Color(
                              0xFFC6C6C6,
                            ),
                            fontSize: 14),
                        border: InputBorder.none,
                        //  fillColor: Color(0xFF2B3038),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFF2B3038)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 10),
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
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Color(0xFF2B3038)),
                          child: Checkbox(
                              checkColor: Color(0xFFC6C6C6),
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Color(0xFF2B3038);
                                }
                                return Color(0xFF2B3038);
                              }),
                              value: this._checkVal,
                              onChanged: (value) {
                                setState(() {
                                  _checkVal = value!;
                                });
                              }),
                        ),
                        RichText(
                          text: TextSpan(
                              text: '    I Accept all ',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xFF848484), fontSize: 12)),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Terms & Condition',
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.underline,
                                      textStyle: const TextStyle(
                                          color: Color(0xFFFED32C),
                                          fontSize: 12),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                      }),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 34),
                      child: RichText(
                        text: TextSpan(
                            text: 'and ',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFF848484), fontSize: 12)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Privacy and policy',
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.underline,
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFED32C), fontSize: 12),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Stack(children: [
                    Container(
                      height: 50,
                      child: Image.asset("assets/images/next.png"),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, top: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an Account? ',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xFF848484), fontSize: 12),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign in',
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.underline,
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFED32C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
