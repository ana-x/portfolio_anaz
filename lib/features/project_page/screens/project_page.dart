import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_anaz/core/image/image_constants.dart';
import 'package:portfolio_anaz/core/local_variable.dart';
import 'package:portfolio_anaz/features/home_page/screens/home_slider.dart';
import 'package:portfolio_anaz/features/project_page/screens/project_List.dart';

import '../../home_page/screens/home_page.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});
  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
              'Proj\nects',
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
            child: SvgPicture.asset(ImageConstants.portfolio,height: scrHeight*0.04,width: scrWidth*0.04,),
          ),
          Positioned(
            top: scrHeight * 0.2,
            left: scrWidth * 0.8,
            child: SvgPicture.asset(ImageConstants.rect1,height: scrHeight*0.09,width: scrWidth*0.09),
          ),
          Positioned(
            left: scrWidth * 0.16,
            bottom: scrHeight * 0.2,
            child: SvgPicture.asset(ImageConstants.rect4,height: scrHeight*0.08,width: scrWidth*0.08,),
          ),
          Positioned(
              top: scrHeight * 0.28,
              left: scrWidth * 0.4,
              child: SvgPicture.asset(ImageConstants.rect2,height: scrHeight*0.07,width: scrWidth*0.07,)),
          Positioned(
            top: scrHeight * 0.77,
            left: scrWidth * 0.42,
            child: SvgPicture.asset(ImageConstants.rect3,height: scrHeight*0.07,width: scrWidth*0.07),
          ),
          Positioned(
            top: scrHeight * 0.28,
            right: scrWidth * 0.01,
            child: SizedBox(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        pageIndicator = 0;
                      });
                      indicatorController
                          .animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(
                            milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        isHoveredList[0] = value;
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "Home",
                        style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.w300,
                          color:  isHoveredList[0]
                              ? Color(0xff00B4CD).withOpacity(0.85):Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.07,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        pageIndicator = 1;
                      });
                      indicatorController
                          .animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(
                            milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    onHover: (value) {
                      setState(() {
                        isHoveredList[1] = value;
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "About",
                        style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.w300,
                          color:  isHoveredList[2]
                              ? Color(0xff00B4CD).withOpacity(0.85):Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.07,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        pageIndicator = 2;
                      });
                      indicatorController
                          .animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(
                            milliseconds: 500),
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
                            "Project",
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
                    onTap: (){
                      setState(() {
                        pageIndicator = 3;
                      });
                      indicatorController
                          .animateToPage(
                        pageIndicator, // Go to the selected page
                        duration: Duration(
                            milliseconds: 500),
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
                          color:  isHoveredList[3]
                              ? Color(0xff00B4CD).withOpacity(0.85):Colors.white,
                          fontSize: scrWidth * 0.014,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: scrHeight * 0.3,
            left: scrWidth * 0.2,
            child: Text(
              "Proj\nects",
              style: GoogleFonts.poppins(
                  height: 1.1,
                  fontSize: scrWidth * 0.1,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: scrHeight * 0.55,
            left: scrWidth * 0.43,
            child: Column(
              children: [
                SvgPicture.asset(ImageConstants.round,height: scrHeight*0.04,width: scrWidth*0.04,),
                SizedBox(
                  height: scrHeight * 0.04,
                ),
                SvgPicture.asset(ImageConstants.round,height: scrHeight*0.04,width: scrWidth*0.04,),
              ],
            ),
          ),
          Positioned(
            top: scrHeight * 0.33,
            left: scrWidth * 0.5,
            child: SizedBox(
              height: scrHeight * 0.4,
              width: scrWidth * 0.4,
              child: Text(
                "As a passionate developer, I have dedicated a significant portion of my time to mastering "
                "Flutter a versatile and powerful framework for building cross-platform mobile applications."
                "In my portfolio, you'll find a collection of Flutter projects that showcase my proficiency "
                "in creating seamless and visually appealing mobile experiences.",
                style: GoogleFonts.rajdhani(
                    fontSize: scrWidth * 0.02,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          Positioned(
            bottom: scrHeight * 0.1,
            right: scrWidth * 0.1,
            child: InkWell(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const ProjectList(),));
              },
              hoverColor: Colors.red,
              child: Container(
                width: scrWidth * 0.1,
                height: scrHeight * 0.08,
                decoration: BoxDecoration(
                    color: const Color(0xff2A2222),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                      size: scrWidth * 0.01,
                    ),
                    SizedBox(width: scrWidth*0.01,),
                    Text(
                      "See more",
                      style: GoogleFonts.rajdhani(
                        fontSize: scrWidth*0.01,
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
