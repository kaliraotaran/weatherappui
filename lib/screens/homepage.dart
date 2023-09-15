// import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:sidebarx/sidebarx.dart';
import 'package:weatherappui/screens/starterpage.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'HrlyPage.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kprimary,
        ),
      ),
      drawer: Drawerz(),
      backgroundColor: kprimary,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'Las Vegas',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Saturday, Sep 15 2023',
                    style: TextStyle(
                        color: Colors.grey, fontSize: 13, letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Icon(
                    FeatherIcons.cloudLightning,
                    color: Colors.white,
                    size: 50,
                    weight: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Thunder',
                    style: GoogleFonts.playfairDisplay(
                        color: Colors.white, fontSize: 80),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '80',
                        style: GoogleFonts.nunito(
                            fontSize: 70,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      const Text(
                        "o",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Text(
                        "F",
                        style: GoogleFonts.raleway(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: HrlyPage(),
                                  type: PageTransitionType.bottomToTop));
                        },
                        child: Text(
                          'See Hourly Forecast',
                          style: GoogleFonts.nunito(
                              fontSize: 20, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        FeatherIcons.arrowRight,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 150.0, vertical: 6),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 0,
                  decoration: BoxDecoration(
                    color: Secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            pill(
                              classi: 'Wind',
                              text: '2.7 km/s',
                              icon: FeatherIcons.wind,
                              bg: Secondary,
                              classtext: Color.fromARGB(255, 50, 50, 50),
                              iconcolor: Color.fromARGB(255, 50, 50, 50),
                              maintext: Color.fromARGB(255, 50, 50, 50),
                            ),
                            pill(
                              classi: '    Humidity',
                              text: '5%',
                              icon: FeatherIcons.droplet,
                              bg: Secondary,
                              classtext: Color.fromARGB(255, 50, 50, 50),
                              iconcolor: Color.fromARGB(255, 50, 50, 50),
                              maintext: Color.fromARGB(255, 50, 50, 50),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 14.0, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            pill(
                              classi: '    UV index',
                              text: '6',
                              icon: FeatherIcons.sun,
                              bg: Secondary,
                              classtext: Color.fromARGB(255, 50, 50, 50),
                              iconcolor: Color.fromARGB(255, 50, 50, 50),
                              maintext: Color.fromARGB(255, 50, 50, 50),
                            ),
                            pill(
                              classi: '   Air Quality',
                              text: '280',
                              icon: FeatherIcons.alignJustify,
                              bg: kprimary,
                              classtext: Colors.grey,
                              iconcolor: Colors.white,
                              maintext: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class pill extends StatelessWidget {
  const pill({
    super.key,
    required this.classi,
    required this.text,
    required this.icon,
    required this.classtext,
    required this.bg,
    required this.maintext,
    required this.iconcolor,
  });
  final String classi;
  final String text;
  final IconData icon;
  final Color classtext;
  final Color bg;
  final Color maintext;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 200,
      decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: kprimary, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  classi,
                  style: TextStyle(
                    color: classtext,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: Text(
                  text,
                  style: TextStyle(
                    color: maintext,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              icon,
              color: iconcolor,
              size: 38,
              weight: 1,
            ),
          )
        ],
      ),
    );
  }
}
