import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vroom/views/onboarding_screens/first.dart';
import 'package:vroom/views/onboarding_screens/second.dart';
import 'package:vroom/views/onboarding_screens/third.dart';

class ONBOARDING extends StatefulWidget {
  const ONBOARDING({super.key});

  @override
  State<ONBOARDING> createState() => _ONBOARDINGState();
}

class _ONBOARDINGState extends State<ONBOARDING> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252527),
      body: Stack(children: [
        PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [FIRST(), SECOND(), const THIRD()]),
        Column(
          children: [
            onLastPage
                ? Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .04,
                      left: MediaQuery.of(context).size.width * .8,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Text(
                          "",
                          style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 245, 242, 242),
                              fontSize: 22),
                        )),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .04,
                      left: MediaQuery.of(context).size.width * .8,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Text(
                          "Skip",
                          style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 245, 242, 242),
                              fontSize: 22),
                        )),
                  ),
            onLastPage
                ? Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .8,
                      left: MediaQuery.of(context).size.width * .8,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/HOMESY");
                        },
                        child: Text(
                          "Done",
                          style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 245, 242, 242),
                              fontSize: 22),
                        )),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .8,
                      left: MediaQuery.of(context).size.width * .8,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 245, 242, 242),
                              fontSize: 22),
                        )),
                  )
          ],
        ),
        Container(
            alignment: const Alignment(-.8, .8),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  dotColor: Color.fromARGB(255, 245, 242, 242),
                  activeDotColor: Color.fromARGB(255, 90, 90, 90)),
            )),
      ]),
    );
  }
}
