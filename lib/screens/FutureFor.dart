import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:weatherappui/screens/HrlyPage.dart';
// import 'package:weatherappui/screens/drawer.dart';

class FutureForcast extends StatelessWidget {
  const FutureForcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: bg,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/pf.png'),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: bg,
                  child: Center(
                    child: TextLiquidFill(
                      boxBackgroundColor: bg,
                      text: 'Future Forecast',
                      // waveDuration: Duration(seconds: 5),
                      waveColor: Colors.black,
                      textStyle: GoogleFonts.playfairDisplay(
                          fontSize: 55,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: bg,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      weathercard(
                        backgrd: bg,
                        day: 'Tomorrow',
                        icon: FeatherIcons.cloud,
                        textcolor: Colors.grey,
                        weather: 'Cloudy',
                      ),
                      weathercard(
                        backgrd: Colors.white,
                        day: 'Today',
                        icon: FeatherIcons.cloud,
                        textcolor: Colors.black,
                        weather: 'Cloudy',
                      ),
                      weathercard(
                        backgrd: bg,
                        day: 'Friday',
                        icon: FeatherIcons.cloudRain,
                        textcolor: Colors.grey,
                        weather: 'Rain',
                      ),
                      weathercard(
                        backgrd: bg,
                        day: 'Saturday',
                        icon: FeatherIcons.sun,
                        textcolor: Colors.grey,
                        weather: 'Sunny',
                      ),
                    ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class weathercard extends StatelessWidget {
  const weathercard({
    super.key,
    required this.textcolor,
    required this.weather,
    required this.icon,
    required this.day,
    required this.backgrd,
  });
  final Color textcolor;
  final String weather;
  final IconData icon;
  final String day;
  final Color backgrd;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                color: backgrd,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '22',
                      style: TextStyle(fontSize: 30, color: textcolor),
                    ),
                    Text(
                      'o',
                      style: TextStyle(fontSize: 20, color: textcolor),
                    ),
                    Text(
                      'c',
                      style: TextStyle(fontSize: 22, color: textcolor),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      day,
                      style: TextStyle(fontSize: 20, color: textcolor),
                    ),
                    Text(
                      weather,
                      style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: textcolor),
                    )
                  ],
                ),
                Icon(icon, color: textcolor, size: 40)
              ],
            )));
  }
}
