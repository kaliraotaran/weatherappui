import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:weatherappui/screens/drawer.dart';
import 'package:weatherappui/screens/starterpage.dart';

const Color bg = Color.fromARGB(255, 225, 225, 225);

class HrlyPage extends StatelessWidget {
  const HrlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawer: Drawerz(),
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        title: Text(
          'Hourly Forecast',
          style: GoogleFonts.playfairDisplay(fontSize: 26, color: Colors.black),
        ),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  bar(
                    bgcolor: Colors.white,
                    textcolor: Colors.black,
                    time: '12 PM',
                    icon: FeatherIcons.cloud,
                    temp: '80',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '1 PM',
                    icon: FeatherIcons.cloud,
                    temp: '75',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '2 PM',
                    icon: FeatherIcons.cloudLightning,
                    temp: '70',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '3 PM',
                    icon: FeatherIcons.cloudLightning,
                    temp: '68',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '4 PM',
                    icon: FeatherIcons.cloudLightning,
                    temp: '68',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '5 PM',
                    icon: FeatherIcons.cloudRain,
                    temp: '67',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '6 PM',
                    icon: FeatherIcons.cloudRain,
                    temp: '67',
                  ),
                  bar(
                    bgcolor: bg,
                    textcolor: Colors.black54,
                    time: '7 PM',
                    icon: FeatherIcons.cloudRain,
                    temp: '67',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class bar extends StatelessWidget {
  const bar({
    super.key,
    required this.time,
    required this.icon,
    required this.temp,
    required this.bgcolor,
    required this.textcolor,
  });
  final String time;
  final IconData icon;
  final String temp;
  final Color bgcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 15),
      child: Container(
        height: 270,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50),
            color: bgcolor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                time,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: textcolor,
                    size: 34,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    temp,
                    style: TextStyle(
                        fontSize: 20,
                        color: textcolor,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
            color: kprimary, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Now",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Monday, Sep 11, 2024',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '80',
                        style: TextStyle(
                            fontSize: 65,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'o',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        'F',
                        style: TextStyle(fontSize: 30, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: DefaultTextStyle(
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 70,
                      color: const Color.fromARGB(165, 158, 158, 158)),
                  child: AnimatedTextKit(
                    totalRepeatCount: 30,
                    animatedTexts: [
                      FadeAnimatedText(
                        'Thunder',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
