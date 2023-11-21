import 'package:flutter/material.dart';
import 'package:gloria/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gloria/pages/login_page.dart';

void main() {
  runApp(gloria());
}

class gloria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => HomePage(),
        "/login": (context) => Loginpage(),
      },
    );
  }
}
