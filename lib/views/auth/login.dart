import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vroom/constants/colors.dart';
import 'package:vroom/constants/sized.dart';
import 'package:vroom/views/auth/auth_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscure = true;

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
                "Log In",
                style: GoogleFonts.inter(
                    color: black, fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome back!",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email or username";
                        } else {
                          return null;
                        }
                      },
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
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 65),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/Recover");
                  },
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 45),
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
                        "Sign In",
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
                    left: MediaQuery.of(context).size.width * 0.25),
                child: Row(
                  children: [
                    Text(
                      "First time here?  ",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/Register");
                      },
                      child: Text(
                        "Register!",
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
