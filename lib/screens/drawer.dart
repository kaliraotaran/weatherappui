import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:glass/glass.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:weatherappui/screens/FutureFor.dart';
import 'package:weatherappui/screens/HrlyPage.dart';
import 'package:weatherappui/screens/homepage.dart';
import 'package:weatherappui/screens/starterpage.dart';

class Drawerz extends StatelessWidget {
  const Drawerz({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(40)),
      child: Drawer(
        backgroundColor: bg,
        child: ListView(
          padding: EdgeInsets
              .zero, // this is for when we wanna add a picture background in the header
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/pf.png')),
                  color: Secondary,
                  border: Border.all(
                    color: Colors.transparent,
                  )),
              accountName: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                child: const Text(
                  'Taran Kalirao',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2),
                ),
              ).asGlass(clipBorderRadius: BorderRadius.circular(30)),
              accountEmail: Text(''),
            ),
            Listtile(
              text: 'Future Forecast',
              icon: FeatherIcons.clock,
              ontap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: FutureForcast(),
                        type: PageTransitionType.rightToLeft));
              },
            ),
            //Divider()
            Listtile(
                text: 'San Francisco', icon: FeatherIcons.mapPin, ontap: () {}),
            Listtile(text: 'Reno', icon: FeatherIcons.mapPin, ontap: () {}),
            Listtile(
                text: 'Las Vegas',
                icon: FeatherIcons.mapPin,
                ontap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: HomePage(),
                          type: PageTransitionType.rightToLeftWithFade));
                }),
            Listtile(text: 'Reno', icon: FeatherIcons.mapPin, ontap: () {}),
          ],
        ),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  const Listtile({
    super.key,
    required this.text,
    required this.icon,
    required this.ontap,
  });
  final String text;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
      child: ListTile(
        tileColor: kprimary,
        iconColor: Colors.white,
        hoverColor: Secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        leading: Icon(icon),
        title: Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        onTap: ontap,
      ),
    );
  }
}
