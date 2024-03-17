import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FIRST extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff252527),
      child: Padding(
        padding: const EdgeInsets.only(top: 78.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.asset("assets/Lottie/pick.json",
                height: MediaQuery.of(context).size.height * .5),
            Text(
              "Achetez et louez le véhicule de votre choix au même endroit!",
              style: GoogleFonts.inter(
                  color: Color.fromARGB(255, 243, 244, 249),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 12.0),
            Text(
              "Une large gamme de voitures et motos s'offre à vous avec des prix à tous les goûts.",
              style: GoogleFonts.inter(
                  color: Color.fromARGB(255, 214, 214, 214),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
