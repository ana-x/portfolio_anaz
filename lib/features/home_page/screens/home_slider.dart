import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/local_variable.dart';
import '../../about_page/screens/about_page.dart';
import '../../contact_page/screens/contact_page.dart';
import '../../project_page/screens/project_page.dart';
import 'home_page.dart';

int pageIndicator = 0;
final CarouselController indicatorController = CarouselController();

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    scrWidth = MediaQuery.of(context).size.width;
    scrHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
      carouselController: indicatorController,
      options: CarouselOptions(
        height: scrHeight, // Adjust height as needed
        aspectRatio: 16 / 9,
        scrollDirection: Axis.vertical, // Set the scroll direction to vertical
        viewportFraction: 1,
        initialPage: pageIndicator,
        onPageChanged: (index, reason) {
          setState(() {
            pageIndicator = index;
          });
        },
        enableInfiniteScroll: false,
        reverse: false,
        scrollPhysics: const BouncingScrollPhysics(),
      ),
      items: const [
        HomePage(),
        AboutPage(),
        ProjectPage(),
        ContactPage(),
      ],
    );
  }
}
