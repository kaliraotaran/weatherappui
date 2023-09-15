import 'package:flutter/material.dart';
import 'package:weatherappui/screens/FutureFor.dart';
import 'package:weatherappui/screens/starterpage.dart';
// import 'package:weatherappui/screens/HrlyPage.dart';
// import 'package:weatherappui/screens/homepage.dart';
// import 'package:weatherappui/screens/starterpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StarterPage(),
    );
  }
}
