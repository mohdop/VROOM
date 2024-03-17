import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "VROOM $_currentIndex",
          style: GoogleFonts.inter(
            color: const Color(0xff252527),
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0), // Adjust padding here
        child: Container(
          height: 83,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: const Color(0xff252527),
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SalomonBottomBar(
              curve: Curves.linear,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                switch (index) {
                  case 0:
                    break;
                  default:
                }
              },
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(CupertinoIcons.home),
                  title: Text("Home", style: GoogleFonts.inter()),
                  selectedColor: const Color(0xfff3f4f9),
                  unselectedColor: const Color(0xffd6d6d6),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(CupertinoIcons.car_detailed),
                  title: const Text("Car"),
                  selectedColor: const Color(0xfff3f4f9),
                  unselectedColor: const Color(0xffd6d6d6),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(CupertinoIcons.heart),
                  title: const Text("Favourites"),
                  selectedColor: const Color(0xfff3f4f9),
                  unselectedColor: const Color(0xffd6d6d6),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(CupertinoIcons.person_fill),
                  title: const Text("Profile"),
                  selectedColor: const Color(0xfff3f4f9),
                  unselectedColor: const Color(0xffd6d6d6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
