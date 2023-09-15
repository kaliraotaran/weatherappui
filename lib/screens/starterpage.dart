import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_icon/animated_icon.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weatherappui/screens/homepage.dart';

final Color kprimary = const Color.fromARGB(255, 18, 23, 16);
final Color Secondary = const Color.fromARGB(255, 245, 208, 99);

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: TextLiquidFill(
                boxBackgroundColor: kprimary,
                text: 'The FORCASTR',
                waveColor: Secondary,
                textStyle:
                    GoogleFonts.playfairDisplay(fontSize: 50, color: kprimary),
                boxHeight: 300,
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Secondary),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          'Check The Weather',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: kprimary),
                        ),
                        IconButton(
                          icon: Icon(FeatherIcons.arrowRight),
                          iconSize: 40,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: HomePage(),
                                    type: PageTransitionType.fade));
                          },
                        ),
                        SizedBox(
                          width: 1,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
