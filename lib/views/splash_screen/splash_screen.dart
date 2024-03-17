import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vroom/views/onboarding_screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const ONBOARDING()));
    });
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff252527),
      body: Center(
        child: Text(
          "VROOM",
          style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 245, 242, 242)),
        ),
      ),
    );
  }
}
