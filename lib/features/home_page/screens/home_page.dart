
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_anaz/features/home_page/screens/home_slider.dart';

import '../../../core/image/image_constants.dart';
import '../../../core/local_variable.dart';


List<bool> isHoveredList = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    isHoveredList = List.generate(4, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    scrHeight = MediaQuery.of(context).size.height;
    scrWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: scrHeight,
        width: scrWidth,
        color: Colors.black,
        child: Stack(children: [
          Row(
            children: [
              Container(
                color: const Color(0xff191919).withOpacity(0.5),
                width: scrWidth * 0.245,
                height: scrHeight,
              ),
              SizedBox(
                width: scrWidth * 0.005,
              ),
              Container(
                color: const Color(0xff191919).withOpacity(0.5),
                width: scrWidth * 0.245,
                height: scrHeight,
              ),
              SizedBox(
                width: scrWidth * 0.005,
              ),
              Container(
                color: const Color(0xff191919).withOpacity(0.5),
                width: scrWidth * 0.245,
                height: scrHeight,
              ),
              SizedBox(
                width: scrWidth * 0.005,
              ),
              Container(
                color: const Color(0xff191919).withOpacity(0.5),
                width: scrWidth * 0.245,
                height: scrHeight,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: const Color(0xff191919).withOpacity(0.3),
                width: scrWidth * 0.25,
                height: scrHeight,
              ),
              SizedBox(
                width: scrWidth * 0.25,
              ),
              Container(
                color: const Color(0xff191919).withOpacity(0.3),
                width: scrWidth * 0.245,
                height: scrHeight,
              ),
            ],
          ),
          Center(
            child: Text(
              'Deve\nloper',
              style: GoogleFonts.poppins(
                  fontSize: scrWidth * 0.26,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 10,
                  height: 0.9,
                  color: const Color(0xff2A2222).withOpacity(0.3)),
            ),
          ),
          Positioned(
            top: scrHeight * 0.04,
            left: scrWidth * 0.04,
            child: SvgPicture.asset(
              ImageConstants.portfolio,
              height: scrHeight * 0.04,
              width: scrWidth * 0.04,
            ),
          ),
          Positioned(
            left: scrWidth * 0.16,
            bottom: scrHeight * 0.14,
            child: SizedBox(
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: RichText(
                      text: TextSpan(
                        text: 'Software Developer\n',
                        style: GoogleFonts.rajdhani(
                            fontWeight: FontWeight.w400,
                            fontSize: scrWidth * 0.014,
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'based on Kerala\n',
                            style: GoogleFonts.rajdhani(
                                fontWeight: FontWeight.w300,
                                fontSize: scrWidth * 0.014,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: 'India',
                            style: GoogleFonts.rajdhani(
                                fontWeight: FontWeight.w300,
                                fontSize: scrWidth * 0.014,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.03,
                  ),
                  SvgPicture.asset(
                    ImageConstants.rect1,
                    height: scrHeight * 0.09,
                    width: scrWidth * 0.09,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: scrHeight * 0.3,
              left: scrWidth * 0.31,
              child: SvgPicture.asset(
                ImageConstants.rect2,
                height: scrHeight * 0.07,
                width: scrWidth * 0.07,
              )),
          Positioned(
            top: scrHeight * 0.24,
            left: scrWidth * 0.42,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: scrHeight * 0.55,
                  width: scrWidth * 0.36,
                  child: SizedBox(
                      width: scrWidth * 0.35,
                      child: SvgPicture.asset(
                        ImageConstants.name,
                        height: scrHeight * 0.04,
                        width: scrWidth * 0.04,
                      )),
                ),
                SizedBox(
                  height: scrHeight * 0.04,
                ),
                SvgPicture.asset(
                  ImageConstants.rect3,
                  height: scrHeight * 0.07,
                  width: scrWidth * 0.07,
                ),
              ],
            ),
          ),
          Positioned(
            left: scrWidth * 0.73,
            top: scrHeight * 0.23,
            child: Column(
              children: [
                SvgPicture.asset(
                  ImageConstants.rect4,
                  height: scrHeight * 0.08,
                  width: scrWidth * 0.08,
                ),
                SizedBox(
                  height: scrHeight * 0.06,
                ),
                SvgPicture.asset(
                  ImageConstants.round,
                  height: scrHeight * 0.04,
                  width: scrWidth * 0.04,
                ),
              ],
            ),
          ),
          Positioned(
            top: scrHeight * 0.28,
            right: scrWidth * 0.01,
            child: SizedBox(
              child: Column(
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        isHoveredList[0] = value;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageIndicator = 0;
                      });
                      indicatorController.animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff00B4CD).withOpacity(0.85),
                          borderRadius: BorderRadius.circular(5)),
                      height: scrHeight * 0.1,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            "Home",
                            style: GoogleFonts.rajdhani(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: scrWidth * 0.014,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.07,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        isHoveredList[1] = value;
                      });
                    },
                    onTap: () {
                      setState(() {
                        pageIndicator = 1;
                      });
                      indicatorController.animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "About",
                        style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.w300,
                          color: isHoveredList[1]
                              ? Color(0xff00B4CD).withOpacity(0.85)
                              : Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.07,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageIndicator = 2;
                      });
                      indicatorController.animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        isHoveredList[2] = value;
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "Project",
                        style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.w300,
                          color: isHoveredList[2]
                              ? Color(0xff00B4CD).withOpacity(0.85)
                              : Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.07,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageIndicator = 3;
                      });
                      indicatorController.animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        isHoveredList[3] = value;
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "Contact",
                        style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.w300,
                          color: isHoveredList[3]
                              ? Color(0xff00B4CD).withOpacity(0.85)
                              : Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
