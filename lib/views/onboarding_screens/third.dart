import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class THIRD extends StatelessWidget {
  const THIRD({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff252527),
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/bikes.jpg",
                      ))),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              "La transparence est notre mot d'ordre",
              style: GoogleFonts.inter(
                  color:const Color.fromARGB(255, 243, 244, 249),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12.0),
            Text(
              "La description du bien est la plus fidèle possible pour vous éviter les mauvaises surprises. Les éléments comme le prix et l'état du véhicule reflètent la réalité.",
              style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 214, 214, 214),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
