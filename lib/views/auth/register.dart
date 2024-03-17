import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vroom/constants/colors.dart';
import 'package:vroom/constants/sized.dart';
import 'package:vroom/views/auth/auth_widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isObscure = true;
  String password = "";
  bool isTheSame = false;
  Color color = deepGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              Text(
                "Create Account",
                style: GoogleFonts.inter(
                    color: black, fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Create an account so you can explore the large catalogue of cars",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      color: const Color.fromARGB(255, 172, 172, 172),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              sizedBox(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border:
                            const UnderlineInputBorder(borderSide: BorderSide.none),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        hintText: "   Email",
                        hintStyle: GoogleFonts.inter(
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.w600),
                        prefixIcon: Icon(
                          CupertinoIcons.mail,
                          size: 32,
                          color: deepGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              sizedBox(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Center(
                    child: TextFormField(
                      obscureText: isObscure,
                      keyboardType: TextInputType.visiblePassword,
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                          focusColor: Colors.white,
                          fillColor: Colors.white,
                          hintText: "   Password",
                          hintStyle: GoogleFonts.inter(
                              fontSize: 18,
                              color: black,
                              fontWeight: FontWeight.w600),
                          prefixIcon: Icon(
                            CupertinoIcons.lock,
                            size: 32,
                            color: deepGrey,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isObscure
                                  ? CupertinoIcons.eye
                                  : CupertinoIcons.eye_slash,
                              size: 32,
                            ),
                            color: deepGrey,
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                          )),
                      onChanged: (value) => password = value,
                    ),
                  ),
                ),
              ),
              sizedBox(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Center(
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        border:
                            const UnderlineInputBorder(borderSide: BorderSide.none),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        hintText: "   Confirm password",
                        hintStyle: GoogleFonts.inter(
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.w600),
                        prefixIcon: Icon(
                          CupertinoIcons.check_mark_circled,
                          size: 32,
                          color: color,
                        ),
                      ),
                      onChanged: (value) {
                        // Check if confirmation password matches the original password
                        if (value == password) {
                          // Show an error message (e.g., using a SnackBar)
                          setState(() {
                            isTheSame = !isTheSame;
                            color = Colors.green;
                          });
                        } else if (value.length != password) {
                          setState(() {
                            isTheSame = false;
                            color = Colors.red;
                          });
                        } else if (value.isEmpty) {
                          color = deepGrey;
                        }
                      },
                    ),
                  ),
                ),
              ),
              sizedBox(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: black,
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              sizedBox(context),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/Login");
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              sizedBox(context),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Or continue with",
                  style: GoogleFonts.inter(
                      fontSize: 18, color: black, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signInPlatform(FontAwesomeIcons.google),
                  signInPlatform(FontAwesomeIcons.apple),
                  signInPlatform(FontAwesomeIcons.facebook)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//243 244 249