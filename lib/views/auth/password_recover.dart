import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vroom/constants/colors.dart';
import 'package:vroom/constants/sized.dart';

class Recover extends StatefulWidget {
  const Recover({super.key});

  @override
  State<Recover> createState() => _RecoverState();
}

class _RecoverState extends State<Recover> {
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
                "Password recovery",
                style: GoogleFonts.inter(
                    color: black, fontSize: 24, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Enter the email to send the recovery code!",
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
                          return "Please enter the  email to send the recovery code";
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
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none),
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
                        "Send recovery code",
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Login");
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: black,
                    ),
                    child: const Center(
                        child: Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
