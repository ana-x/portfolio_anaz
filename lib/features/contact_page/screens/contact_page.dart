import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_anaz/core/image/image_constants.dart';
import 'package:portfolio_anaz/core/local_variable.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../home_page/screens/home_page.dart';
import '../../home_page/screens/home_slider.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
        child: Stack(
          children: [
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
                'Con\ntact',
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
              left: scrWidth * 0.16,
              bottom: scrHeight * 0.14,
              child: SvgPicture.asset(ImageConstants.rect1,height: scrHeight*0.09,width: scrWidth*0.09),
            ),
            Positioned(
              top: scrHeight * 0.54,
              left: scrWidth * 0.46,
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
              top: scrHeight * 0.3,
              left: scrWidth * 0.2,
              child: Text(
                "Con_\nTact",
                style: GoogleFonts.poppins(
                    height: 1.1,
                    fontSize: scrWidth * 0.1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
                top: scrHeight * 0.3,
                left: scrWidth * 0.31,
                child: SvgPicture.asset(ImageConstants.rect2,height: scrHeight*0.07,width: scrWidth*0.07,)),
            Positioned(
              top: scrHeight * 0.24,
              left: scrWidth * 0.42,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: scrHeight * 0.522,
                    width: scrWidth * 0.353,
                    child: Row(
                      children: [
                        // Text(
                        //   "Hello\nI am\nAnas",
                        //   style: GoogleFonts.poppins(
                        //       height: 0.95,
                        //       fontWeight: FontWeight.w600,
                        //       fontSize: scrWidth*0.1,
                        //       color: Colors.white),
                        // ),
                        Column(
                          children: [
                            SvgPicture.asset(ImageConstants.rect4,height: scrHeight*0.08,width: scrWidth*0.08,),
                            SizedBox(
                              height: scrHeight * 0.06,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: scrHeight * 0.04,
                  ),
                  SvgPicture.asset(ImageConstants.rect3,height: scrHeight*0.07,width: scrWidth*0.07),
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
                            color:  isHoveredList[1]
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
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff00B4CD).withOpacity(0.85),
                            borderRadius: BorderRadius.circular(5)),
                        height: scrHeight * 0.1,
                        child: Center(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "Contact",
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
                  ],
                ),
              ),
            ),
            Positioned(
              top: scrHeight * 0.35,
              left: scrWidth * 0.52,
              child: SizedBox(
                height: scrHeight * 0.4,
                width: scrWidth * 0.4,
                child: Text("Thank you for visiting my portfolio! If you have any inquiries, collaboration opportunities, or just want to say hello, feel free to reach out to me. \n"
                    "You can contact me via email or connect with me on social media platform, where I regularly share updates and insights related to my work. I look forward to hearing from you and discussing how we can work together.",
                  style: GoogleFonts.rajdhani(
                      fontSize: scrWidth * 0.02,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            Positioned(
              top: scrHeight * 0.75,
              left: scrWidth * 0.52,
              child: SizedBox(
                // color: Colors.red,
                width: scrWidth*0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        _launchLinkedinURL("https://www.linkedin.com/in/muhammed-anas-anax");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,
                        child: Lottie.asset(
                            ImageConstants.linkedIn),
                      ),
                    ), 
                    InkWell(
                      onTap: (){
                        _launchInstagramURL("https://www.instagram.com/anas.ex_");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,

                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.instagram),
                        ),
                      ),
                    ), 
                    InkWell(
                      onTap: (){
                        _launchWhatsappURL("https://wa.me/+918714225332");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,
                      
                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.whatsapp),
                        ),
                      ),
                    ), 
                    InkWell(
                      onTap: (){
                        _launchGithubURL("https://github.com/ana-x");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.1,
                        width: scrWidth * 0.03,
                      
                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.github),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _launchPhoneURL('tel:+918714225332');
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,
                      
                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.phone),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _launchPinterestURL("https://pin.it/7Hl5kUof6");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,
                      
                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.pinterest),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _launchMailURL("mailto:anazmuhammed2003@gmail.com?subject=Enquiry &body=");
                      },
                      child: SizedBox(
                        height: scrHeight * 0.15,
                        width: scrWidth * 0.04,
                      
                        child: Center(
                          child: Lottie.asset(
                              ImageConstants.mail),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void _launchInstagramURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } 
  void _launchGithubURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _launchLinkedinURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _launchWhatsappURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } 
  void _launchPinterestURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _launchMailURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _launchPhoneURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
